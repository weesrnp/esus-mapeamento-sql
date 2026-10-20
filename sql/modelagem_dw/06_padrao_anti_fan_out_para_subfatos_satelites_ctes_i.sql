-- titulo: Padrão Anti-Fan-Out para Subfatos Satélites (CTEs Independentes)
-- categoria: modelagem_dw
-- tabelas: tb_dim_procedimento, tb_fat_atd_ind_medicamentos, tb_fat_atd_ind_procedimentos, tb_fat_atendimento_individual
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: agrega todo o histórico antes do JOIN (sem filtro de período)

-- Consulta segura sem produto cartesiano para cruzar Atendimentos + Procedimentos + Medicamentos:
WITH atendimentos_base AS (
    SELECT 
        ai.co_fat_cidadao_pec,
        ai.co_seq_fat_atd_ind,
        ai.co_dim_tempo,
        ai.co_dim_equipe_1
    FROM tb_fat_atendimento_individual ai
    WHERE ai.co_dim_tempo BETWEEN 20260101 AND 20260630
),
procedimentos_agregados AS (
    SELECT 
        pr.co_fat_atd_ind,
        COUNT(DISTINCT pr.co_dim_procedimento_avaliado) AS qtd_procedimentos_distintos,
        MAX(CASE WHEN dp.co_proced IN ('0202010503', 'ABEX008') THEN 1 ELSE 0 END) AS teve_hba1c
    FROM tb_fat_atd_ind_procedimentos pr
    JOIN tb_dim_procedimento dp ON pr.co_dim_procedimento_avaliado = dp.co_seq_dim_procedimento
    GROUP BY pr.co_fat_atd_ind
),
medicamentos_agregados AS (
    SELECT 
        med.co_fat_atd_ind,
        COUNT(DISTINCT med.co_dim_catmat) AS qtd_medicamentos_prescritos
    FROM tb_fat_atd_ind_medicamentos med
    GROUP BY med.co_fat_atd_ind
)
SELECT 
    ab.co_fat_cidadao_pec,
    ab.co_seq_fat_atd_ind,
    ab.co_dim_tempo,
    COALESCE(pa.qtd_procedimentos_distintos, 0) AS qtd_procedimentos,
    COALESCE(pa.teve_hba1c, 0) AS teve_hba1c,
    COALESCE(ma.qtd_medicamentos_prescritos, 0) AS qtd_medicamentos
FROM atendimentos_base ab
LEFT JOIN procedimentos_agregados pa ON ab.co_seq_fat_atd_ind = pa.co_fat_atd_ind
LEFT JOIN medicamentos_agregados ma ON ab.co_seq_fat_atd_ind = ma.co_fat_atd_ind;
