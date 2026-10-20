-- titulo: Busca Ativa de Gestantes sem Testes Rápidos ou sem Vacina dTpa (Indicador C3 - Detecção Completa)
-- categoria: busca_ativa
-- tabelas: tb_cidadao, tb_dim_equipe, tb_dim_imunobiologico, tb_dim_procedimento, tb_fat_atd_ind_procedimentos, tb_fat_atendimento_individual, tb_fat_cidadao_pec, tb_fat_vacinacao, tb_fat_vacinacao_vacina
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: marca REALIZADO com teste de sífilis OU HIV (o C3 exige os dois); dTpa aceita antes de 20 semanas; pode listar gestação já encerrada

-- Lista de gestantes ativas que precisam de Teste Rápido (Sífilis/HIV) ou Vacina dTpa
WITH gestantes_ativas AS (
    SELECT DISTINCT ON (pec.co_seq_fat_cidadao_pec)
        pec.co_seq_fat_cidadao_pec,
        cid.no_cidadao,
        LEFT(cid.nu_cpf, 3) || '.***.***-' || RIGHT(cid.nu_cpf, 2) AS nu_cpf_mascarado,
        de.no_equipe,
        -- DUM no DW = co_dim_tempo_dum (AAAAMMDD; 30001231 = sem DUM). A coluna dt_dum não existe.
        CASE WHEN ai.co_dim_tempo_dum <> 30001231 THEN TO_DATE(ai.co_dim_tempo_dum::text, 'YYYYMMDD') END AS dt_dum,
        ai.nu_idade_gestacional_semanas,
        TO_DATE(ai.co_dim_tempo::text, 'YYYYMMDD') AS dt_ultima_consulta
    FROM tb_fat_atendimento_individual ai
    JOIN tb_fat_cidadao_pec pec ON ai.co_fat_cidadao_pec = pec.co_seq_fat_cidadao_pec
    JOIN tb_cidadao cid ON pec.co_cidadao = cid.co_seq_cidadao
    JOIN tb_dim_equipe de ON ai.co_dim_equipe_1 = de.co_seq_dim_equipe
    WHERE (ai.co_dim_tempo_dum <> 30001231 OR ai.nu_idade_gestacional_semanas IS NOT NULL)
      AND TO_DATE(ai.co_dim_tempo::text, 'YYYYMMDD') >= (CURRENT_DATE - INTERVAL '9 months')
    ORDER BY pec.co_seq_fat_cidadao_pec, ai.co_dim_tempo DESC
)
SELECT 
    g.no_cidadao,
    g.nu_cpf_mascarado,
    g.no_equipe,
    g.dt_dum,
    g.nu_idade_gestacional_semanas,
    g.dt_ultima_consulta,
    CASE WHEN tr.co_fat_cidadao_pec IS NOT NULL THEN 'REALIZADO' ELSE 'PENDENTE' END AS status_testes_rapidos,
    CASE WHEN vac.co_fat_cidadao_pec IS NOT NULL THEN 'VACINADA' ELSE 'PENDENTE' END AS status_dtpa
FROM gestantes_ativas g
LEFT JOIN (
    SELECT DISTINCT aip.co_fat_cidadao_pec
    FROM tb_fat_atd_ind_procedimentos aip
    JOIN tb_dim_procedimento dp ON aip.co_dim_procedimento_avaliado = dp.co_seq_dim_procedimento
    WHERE REGEXP_REPLACE(dp.co_proced, '[^0-9A-Za-z]', '', 'g') IN ('0214010074', '0214010082', '0214010252', '0202031098', '0202031110', '0202031179', 'ABPG026',  -- sífilis
                                                                     '0214010040', '0214010279', '0214010058', '0202030300', 'ABPG024', 'ABEX018')  -- HIV (nota C3, quadro 07)
      AND TO_DATE(aip.co_dim_tempo::text, 'YYYYMMDD') >= (CURRENT_DATE - INTERVAL '9 months')
) tr ON tr.co_fat_cidadao_pec = g.co_seq_fat_cidadao_pec
LEFT JOIN (
    SELECT DISTINCT v.co_fat_cidadao_pec
    FROM tb_fat_vacinacao v
    JOIN tb_fat_vacinacao_vacina vv ON vv.co_fat_vacinacao = v.co_seq_fat_vacinacao
    -- dTpa adulto = nu_identificador '57' (co_seq 9). O co_seq 57 é a vacina da DENGUE: nunca filtrar pelo co_seq.
    JOIN tb_dim_imunobiologico i ON i.co_seq_dim_imunobiologico = vv.co_dim_imunobiologico AND i.nu_identificador = '57'
    WHERE TRUE
      AND TO_DATE(vv.co_dim_tempo_vacina_aplicada::text, 'YYYYMMDD') >= (CURRENT_DATE - INTERVAL '9 months')
) vac ON vac.co_fat_cidadao_pec = g.co_seq_fat_cidadao_pec
ORDER BY g.no_equipe, g.no_cidadao;
