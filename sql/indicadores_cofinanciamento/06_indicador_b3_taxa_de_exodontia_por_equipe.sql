-- titulo: Indicador B3: Taxa de Exodontia de Dentes Permanentes por Equipe de Saúde Bucal
-- categoria: indicadores_cofinanciamento
-- indicador: B3
-- tabelas: tb_dim_cbo, tb_dim_equipe, tb_dim_procedimento, tb_fat_atend_odonto_proced
-- parametros: fim, ini
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: soma qt_procedimentos (1 quando vazio); só códigos SIGTAP, como na nota (procedimento lançado só com código ABPO da ficha não entra); não confere carga horária nem vínculo eSB-eSF

-- B3 (nota metodológica B3, SEI 0054640777): exodontias de dente permanente feitas por cirurgião-dentista sobre o total
-- de procedimentos individuais preventivos, curativos e exodontias feitos por cirurgião-dentista e TSB.
-- Parâmetro (não é "quanto menor melhor" sem limite): Ótimo >= 3 e < 10; Bom >= 10 e < 12; Suficiente >= 12 e < 14;
-- Regular < 3 ou >= 14.
-- psql -v ini=AAAAMMDD -v fim=AAAAMMDD  (quadrimestre avaliado)
WITH proc AS (
    SELECT e.nu_ine AS ine, c.nu_cbo, coalesce(p.qt_procedimentos, 1) AS qt,
           regexp_replace(upper(d.co_proced), '[^0-9A-Z]', '', 'g') AS cod
    FROM tb_fat_atend_odonto_proced p
    JOIN tb_dim_procedimento d ON d.co_seq_dim_procedimento = p.co_dim_procedimento
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = p.co_dim_cbo_1
    JOIN tb_dim_equipe e ON e.co_seq_dim_equipe = p.co_dim_equipe_1 AND e.st_registro_valido = 1
    WHERE p.co_dim_tempo BETWEEN :ini AND :fim
      AND c.nu_cbo IN ('223208', '223293', '223272', '322405', '322425')   -- CD e TSB (TSB só no denominador)
      AND e.nu_ine IS NOT NULL AND e.nu_ine <> '-'
),
cls AS (
    SELECT ine, qt,
           cod IN ('0414020138', '0414020146') AND nu_cbo LIKE '2232%' AS exodontia,
           cod IN ('0101020058', '0101020066', '0101020074', '0101020082', '0101020090', '0101020120',   -- preventivos
                   '0307010015', '0307010031', '0307010066', '0307010074', '0307010082', '0307010104',   -- restauradores
                   '0307010112', '0307010120', '0307020010', '0307020029', '0307020070',
                   '0307030024', '0307030040', '0307030059', '0307030067', '0307030075', '0307030083',   -- periodontais e mucosa
                   '0307050017', '0414020138', '0414020146') AS elegivel
    FROM proc
),
eq AS (
    SELECT ine, sum(qt) FILTER (WHERE exodontia) AS exodontias, sum(qt) FILTER (WHERE elegivel) AS procedimentos
    FROM cls GROUP BY ine
)
SELECT ine, coalesce(exodontias, 0) AS exodontias, coalesce(procedimentos, 0) AS procedimentos,
       round(100.0 * coalesce(exodontias, 0) / nullif(procedimentos, 0), 2) AS taxa_b3,
       CASE WHEN coalesce(procedimentos, 0) = 0 THEN 'Sem dados'
            WHEN 100.0 * coalesce(exodontias, 0) / nullif(procedimentos, 0) >= 3
                 AND 100.0 * coalesce(exodontias, 0) / procedimentos < 10 THEN 'Ótimo'
            WHEN 100.0 * coalesce(exodontias, 0) / nullif(procedimentos, 0) >= 10
                 AND 100.0 * coalesce(exodontias, 0) / procedimentos < 12 THEN 'Bom'
            WHEN 100.0 * coalesce(exodontias, 0) / nullif(procedimentos, 0) >= 12
                 AND 100.0 * coalesce(exodontias, 0) / procedimentos < 14 THEN 'Suficiente'
            ELSE 'Regular' END AS classificacao
FROM eq ORDER BY ine;
