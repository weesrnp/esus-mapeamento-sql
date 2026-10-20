-- titulo: Indicador C1: Mais Acesso à APS por Equipe (Demanda Programada sobre o Total)
-- categoria: indicadores_cofinanciamento
-- indicador: C1
-- tabelas: tb_dim_cbo, tb_dim_equipe, tb_dim_tipo_atendimento, tb_fat_atendimento_individual
-- parametros: fim, ini
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: não confere tipo de equipe (70/76) nem CNS do profissional; tipo de demanda lido pela descrição da dimensão

-- C1 (nota metodológica C1): numerador = atendimentos individuais por demanda programada (consulta agendada
-- programada, cuidado continuado, consulta agendada); denominador = atendimentos por demanda programada + espontânea
-- (escuta inicial/orientação, consulta no dia, atendimento de urgência). Só médicos e enfermeiros da lista da nota.
-- Parâmetro em sino: Ótimo > 50 e <= 70; Bom > 30 e <= 50; Suficiente > 10 e <= 30; Regular <= 10 ou > 70.
-- psql -v ini=AAAAMMDD -v fim=AAAAMMDD  (quadrimestre avaliado)
-- O código de cada tipo muda entre versões (armadilha 7): a demanda é classificada pela descrição. Confira antes:
--   SELECT co_seq_dim_tipo_atendimento, ds_tipo_atendimento FROM tb_dim_tipo_atendimento ORDER BY 1;
WITH tipo AS (
    SELECT co_seq_dim_tipo_atendimento AS id,
           CASE WHEN lower(ds_tipo_atendimento) ~ '(agendad|cuidado continuado)' THEN 'programada'
                WHEN lower(ds_tipo_atendimento) ~ '(espont|escuta|orienta|no dia|urg)' THEN 'espontanea' END AS demanda
    FROM tb_dim_tipo_atendimento
),
atd AS (
    SELECT e.nu_ine AS ine, t.demanda
    FROM tb_fat_atendimento_individual a
    JOIN tipo t ON t.id = a.co_dim_tipo_atendimento AND t.demanda IS NOT NULL
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = a.co_dim_cbo_1
    JOIN tb_dim_equipe e ON e.co_seq_dim_equipe = a.co_dim_equipe_1 AND e.st_registro_valido = 1
    WHERE a.co_dim_tempo BETWEEN :ini AND :fim
      AND c.nu_cbo IN ('225142', '225170', '225130', '225125', '225250', '223565', '223505')
      AND e.nu_ine IS NOT NULL AND e.nu_ine <> '-'
),
eq AS (
    SELECT ine, count(*) FILTER (WHERE demanda = 'programada') AS programada,
           count(*) FILTER (WHERE demanda = 'espontanea') AS espontanea, count(*) AS total
    FROM atd GROUP BY ine
)
SELECT ine, programada, espontanea, total, round(100.0 * programada / nullif(total, 0), 1) AS pct_c1,
       CASE WHEN 100.0 * programada / nullif(total, 0) > 50 AND 100.0 * programada / total <= 70 THEN 'Ótimo'
            WHEN 100.0 * programada / nullif(total, 0) > 30 AND 100.0 * programada / total <= 50 THEN 'Bom'
            WHEN 100.0 * programada / nullif(total, 0) > 10 AND 100.0 * programada / total <= 30 THEN 'Suficiente'
            ELSE 'Regular' END AS classificacao
FROM eq ORDER BY ine;
