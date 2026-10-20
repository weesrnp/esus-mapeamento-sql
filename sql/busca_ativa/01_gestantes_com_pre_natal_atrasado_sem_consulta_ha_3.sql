-- titulo: Gestantes com Pré-Natal Atrasado (Sem consulta há 30 dias)
-- categoria: busca_ativa
-- tabelas: tb_cidadao, tb_dim_equipe, tb_fat_atendimento_individual, tb_fat_cidadao_pec
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: a mesma gestante pode aparecer mais de uma vez (agrupa por DUM e equipe); não exclui óbito nem mudança

WITH gestantes_ativas AS (
    SELECT 
        ai.co_fat_cidadao_pec,
        TO_DATE(ai.co_dim_tempo_dum::text, 'YYYYMMDD') AS dt_dum,
        (TO_DATE(ai.co_dim_tempo_dum::text, 'YYYYMMDD') + INTERVAL '280 days')::date AS dt_dpp,
        MAX(TO_DATE(ai.co_dim_tempo::text, 'YYYYMMDD')) AS dt_ultima_consulta,
        ai.co_dim_equipe_1 AS co_dim_equipe
    FROM tb_fat_atendimento_individual ai
    WHERE ai.co_dim_tempo_dum IS NOT NULL
      AND ai.co_dim_tempo_dum <> 30001231
      AND (TO_DATE(ai.co_dim_tempo_dum::text, 'YYYYMMDD') + INTERVAL '294 days') >= CURRENT_DATE
    GROUP BY ai.co_fat_cidadao_pec, ai.co_dim_tempo_dum, ai.co_dim_equipe_1
)
SELECT 
    cid.no_cidadao,
    LEFT(cid.nu_cpf, 3) || '.***.***-' || RIGHT(cid.nu_cpf, 2) AS nu_cpf_mascarado,
    ga.dt_dum,
    ga.dt_dpp,
    ga.dt_ultima_consulta,
    (CURRENT_DATE - ga.dt_ultima_consulta) AS dias_sem_consulta,
    de.no_equipe
FROM gestantes_ativas ga
JOIN tb_fat_cidadao_pec pec ON ga.co_fat_cidadao_pec = pec.co_seq_fat_cidadao_pec
JOIN tb_cidadao cid ON pec.co_cidadao = cid.co_seq_cidadao
JOIN tb_dim_equipe de ON ga.co_dim_equipe = de.co_seq_dim_equipe
WHERE (CURRENT_DATE - ga.dt_ultima_consulta) > 30
ORDER BY dias_sem_consulta DESC;
