-- titulo: Busca Ativa Nominal de Crianças com Vacinação Atrasada
-- categoria: imunizacao
-- tabelas: tb_cidadao, tb_dim_dose_imunobiologico, tb_dim_equipe, tb_dim_imunobiologico, tb_fat_cidadao_pec, tb_fat_vacinacao, tb_fat_vacinacao_vacina
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: usa o id da dimensão de dose como número da dose (MAX < 3 aceita D3 sem D1/D2); olha só penta, VIP e tríplice viral

-- Busca Ativa Nominal de Crianças Faltosas (< 2 anos) para Ação Territorial ACS
-- CPF mascarado; endereço, telefone e nome da mãe ficam de fora (a equipe consulta no prontuário).
WITH criancas_alvo AS (
    SELECT 
        c.co_seq_fat_cidadao_pec,
        c.no_cidadao,
        CONCAT(SUBSTRING(cid.nu_cpf, 1, 3), '.***.***-', SUBSTRING(cid.nu_cpf, 10, 2)) AS nu_cpf_mascarado,
        cid.dt_nascimento,
        cid.nu_micro_area,
        c.co_dim_equipe_vinc
    FROM tb_fat_cidadao_pec c
    JOIN tb_cidadao cid ON c.co_cidadao = cid.co_seq_cidadao
    WHERE COALESCE(c.st_faleceu, 0) = 0
      AND cid.dt_nascimento BETWEEN (CURRENT_DATE - INTERVAL '24 months') AND (CURRENT_DATE - INTERVAL '6 months')
),
historico_vacinal AS (
    SELECT 
        fv.co_fat_cidadao_pec,
        MAX(CASE WHEN dim_imuno.nu_identificador = '42' THEN dim_dose.co_seq_dim_dose_imunobiologico END) AS max_dose_penta,
        MAX(CASE WHEN dim_imuno.nu_identificador = '22' THEN dim_dose.co_seq_dim_dose_imunobiologico END) AS max_dose_vip,
        MAX(CASE WHEN dim_imuno.nu_identificador = '24' THEN dim_dose.co_seq_dim_dose_imunobiologico END) AS max_dose_scr
    FROM tb_fat_vacinacao fv
    INNER JOIN tb_fat_vacinacao_vacina fvv ON fvv.co_fat_vacinacao = fv.co_seq_fat_vacinacao
    INNER JOIN tb_dim_imunobiologico dim_imuno ON dim_imuno.co_seq_dim_imunobiologico = fvv.co_dim_imunobiologico
    INNER JOIN tb_dim_dose_imunobiologico dim_dose ON dim_dose.co_seq_dim_dose_imunobiologico = fvv.co_dim_dose_imunobiologico
    WHERE fv.co_fat_cidadao_pec IN (SELECT co_seq_fat_cidadao_pec FROM criancas_alvo)
    GROUP BY fv.co_fat_cidadao_pec
)
SELECT 
    eq.no_equipe,
    ca.nu_micro_area AS microarea_acs,
    ca.no_cidadao AS nome_crianca,
    ca.nu_cpf_mascarado AS cpf,
    ca.dt_nascimento,
    AGE(CURRENT_DATE, ca.dt_nascimento) AS idade_atual,
    CASE 
        WHEN COALESCE(hv.max_dose_penta, 0) < 3 THEN 'PENTAVALENTE ATRASADA;' 
        ELSE '' 
    END ||
    CASE 
        WHEN COALESCE(hv.max_dose_vip, 0) < 3 THEN ' VIP POLIO ATRASADA;' 
        ELSE '' 
    END ||
    CASE 
        WHEN AGE(CURRENT_DATE, ca.dt_nascimento) >= INTERVAL '12 months' AND COALESCE(hv.max_dose_scr, 0) < 1 THEN ' TRÍPLICE VIRAL ATRASADA;' 
        ELSE '' 
    END AS pendencias_vacinais
FROM criancas_alvo ca
LEFT JOIN historico_vacinal hv ON hv.co_fat_cidadao_pec = ca.co_seq_fat_cidadao_pec
LEFT JOIN tb_dim_equipe eq ON eq.co_seq_dim_equipe = ca.co_dim_equipe_vinc
WHERE COALESCE(hv.max_dose_penta, 0) < 3 
   OR COALESCE(hv.max_dose_vip, 0) < 3
   OR (AGE(CURRENT_DATE, ca.dt_nascimento) >= INTERVAL '12 months' AND COALESCE(hv.max_dose_scr, 0) < 1)
ORDER BY eq.no_equipe, ca.nu_micro_area, ca.dt_nascimento DESC;
