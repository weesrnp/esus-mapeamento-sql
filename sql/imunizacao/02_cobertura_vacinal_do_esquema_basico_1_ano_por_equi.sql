-- titulo: Cobertura Vacinal do Esquema Básico (1 Ano) por Equipe
-- categoria: imunizacao
-- tabelas: tb_dim_dose_imunobiologico, tb_dim_equipe, tb_dim_imunobiologico, tb_dim_unidade_saude, tb_fat_cidadao_pec, tb_fat_vacinacao, tb_fat_vacinacao_vacina
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: conta dose em qualquer idade (o C2 exige dose na idade certa); dose por id da dimensão; janela relativa a CURRENT_DATE

-- Cobertura Vacinal de Esquema Básico (< 1 ano) por Equipe e Unidade
-- Tempo de execução estimado: < 1.5s
WITH coorte_criancas AS (
    SELECT 
        c.co_seq_fat_cidadao_pec,
        c.no_cidadao,
        c.co_dim_tempo_nascimento,
        c.co_dim_unidade_saude_vinc,
        c.co_dim_equipe_vinc
    FROM tb_fat_cidadao_pec c
    WHERE COALESCE(c.st_faleceu, 0) = 0
      AND c.co_dim_tempo_nascimento IS NOT NULL
      AND c.co_dim_tempo_nascimento <> 30001231
      AND c.co_dim_tempo_nascimento BETWEEN TO_CHAR(CURRENT_DATE - INTERVAL '24 months', 'YYYYMMDD')::bigint AND TO_CHAR(CURRENT_DATE - INTERVAL '12 months', 'YYYYMMDD')::bigint
),
vacinas_crianca AS (
    SELECT 
        fv.co_fat_cidadao_pec,
        -- Verificação Pentavalente 3 Doses (Código SIPNI 42)
        COUNT(DISTINCT CASE WHEN dim_imuno.nu_identificador = '42' AND dim_dose.co_seq_dim_dose_imunobiologico IN (1, 2, 3) THEN dim_dose.co_seq_dim_dose_imunobiologico END) AS doses_penta,
        -- Verificação VIP 3 Doses (Código SIPNI 22)
        COUNT(DISTINCT CASE WHEN dim_imuno.nu_identificador = '22' AND dim_dose.co_seq_dim_dose_imunobiologico IN (1, 2, 3) THEN dim_dose.co_seq_dim_dose_imunobiologico END) AS doses_vip,
        -- Verificação Pneumo 10 2 Doses (Código SIPNI 26)
        COUNT(DISTINCT CASE WHEN dim_imuno.nu_identificador = '26' AND dim_dose.co_seq_dim_dose_imunobiologico IN (1, 2) THEN dim_dose.co_seq_dim_dose_imunobiologico END) AS doses_pneumo
    FROM tb_fat_vacinacao fv
    INNER JOIN tb_fat_vacinacao_vacina fvv ON fvv.co_fat_vacinacao = fv.co_seq_fat_vacinacao
    INNER JOIN tb_dim_imunobiologico dim_imuno ON dim_imuno.co_seq_dim_imunobiologico = fvv.co_dim_imunobiologico
    INNER JOIN tb_dim_dose_imunobiologico dim_dose ON dim_dose.co_seq_dim_dose_imunobiologico = fvv.co_dim_dose_imunobiologico
    WHERE fv.co_fat_cidadao_pec IN (SELECT co_seq_fat_cidadao_pec FROM coorte_criancas)
    GROUP BY fv.co_fat_cidadao_pec
)
SELECT 
    COALESCE(eq.no_equipe, 'SEM EQUIPE VINCULADA') AS equipe,
    COALESCE(un.no_unidade_saude, 'SEM UBS') AS unidade_saude,
    COUNT(cc.co_seq_fat_cidadao_pec) AS total_criancas_coorte,
    SUM(CASE WHEN vc.doses_penta >= 3 AND vc.doses_vip >= 3 AND vc.doses_pneumo >= 2 THEN 1 ELSE 0 END) AS criancas_esquema_completo,
    ROUND(
        (SUM(CASE WHEN vc.doses_penta >= 3 AND vc.doses_vip >= 3 AND vc.doses_pneumo >= 2 THEN 1 ELSE 0 END)::numeric / 
        NULLIF(COUNT(cc.co_seq_fat_cidadao_pec), 0)) * 100, 2
    ) AS pct_cobertura_esquema_basico
FROM coorte_criancas cc
LEFT JOIN vacinas_crianca vc ON vc.co_fat_cidadao_pec = cc.co_seq_fat_cidadao_pec
LEFT JOIN tb_dim_equipe eq ON eq.co_seq_dim_equipe = cc.co_dim_equipe_vinc
LEFT JOIN tb_dim_unidade_saude un ON un.co_seq_dim_unidade_saude = cc.co_dim_unidade_saude_vinc
GROUP BY eq.no_equipe, un.no_unidade_saude
ORDER BY pct_cobertura_esquema_basico ASC;
