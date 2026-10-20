-- titulo: Query de Detecção de Munícipes com Atendimento no PEC sem Cadastro Territorial
-- categoria: cadastro_e_territorio
-- tabelas: tb_cidadao, tb_dim_equipe, tb_fat_atendimento_individual, tb_fat_cad_individual, tb_fat_cidadao_pec
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: considera só a ficha individual (ignora a domiciliar); liga a pessoa por um único registro do DW

-- Cidadãos que consultaram na UBS nos últimos 12 meses mas NÃO possuem FCI vinculada à equipe (Sumiço Territorial)
SELECT 
    cid.no_cidadao,
    LEFT(cid.nu_cpf, 3) || '.***.***-' || RIGHT(cid.nu_cpf, 2) AS nu_cpf_mascarado,
    cid.dt_nascimento,
    MAX(TO_DATE(ai.co_dim_tempo::text, 'YYYYMMDD')) AS dt_ultimo_atendimento,
    de.no_equipe AS equipe_atendimento
FROM tb_fat_atendimento_individual ai
JOIN tb_fat_cidadao_pec pec ON ai.co_fat_cidadao_pec = pec.co_seq_fat_cidadao_pec
JOIN tb_cidadao cid ON pec.co_cidadao = cid.co_seq_cidadao
JOIN tb_dim_equipe de ON ai.co_dim_equipe_1 = de.co_seq_dim_equipe
LEFT JOIN (
    SELECT DISTINCT co_fat_cidadao_pec
    FROM tb_fat_cad_individual
    WHERE (co_dim_tipo_saida_cadastro IS NULL OR co_dim_tipo_saida_cadastro NOT IN (1, 2))
      AND COALESCE(st_ficha_inativa, 0) = 0
      AND TO_DATE(co_dim_tempo::text, 'YYYYMMDD') >= (CURRENT_DATE - INTERVAL '24 months')
) fci ON fci.co_fat_cidadao_pec = pec.co_seq_fat_cidadao_pec
WHERE TO_DATE(ai.co_dim_tempo::text, 'YYYYMMDD') >= (CURRENT_DATE - INTERVAL '12 months')
  AND fci.co_fat_cidadao_pec IS NULL
GROUP BY cid.no_cidadao, cid.nu_cpf, cid.dt_nascimento, de.no_equipe
ORDER BY dt_ultimo_atendimento DESC;
