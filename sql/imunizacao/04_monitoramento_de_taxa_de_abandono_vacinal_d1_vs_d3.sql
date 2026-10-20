-- titulo: Monitoramento de Taxa de Abandono Vacinal (D1 vs D3)
-- categoria: imunizacao
-- tabelas: tb_dim_dose_imunobiologico, tb_dim_imunobiologico, tb_fat_vacinacao_vacina
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: faixas de abandono diferentes das do imunizacao/07; ano 2026 fixo; abandono negativo (D3 > D1) sem alerta

-- Taxa de Abandono Vacinal de Pentavalente e VIP no Exercício Atual
WITH aplicacoes AS (
    SELECT 
        dim_imuno.nu_identificador AS cod_imunobiologico,
        dim_imuno.no_imunobiologico AS nome_vacina,
        SUM(CASE WHEN dim_dose.co_seq_dim_dose_imunobiologico = 1 THEN 1 ELSE 0 END) AS total_d1,
        SUM(CASE WHEN dim_dose.co_seq_dim_dose_imunobiologico = 3 THEN 1 ELSE 0 END) AS total_d3
    FROM tb_fat_vacinacao_vacina fvv
    INNER JOIN tb_dim_imunobiologico dim_imuno ON dim_imuno.co_seq_dim_imunobiologico = fvv.co_dim_imunobiologico
    INNER JOIN tb_dim_dose_imunobiologico dim_dose ON dim_dose.co_seq_dim_dose_imunobiologico = fvv.co_dim_dose_imunobiologico
    WHERE fvv.st_registro_anterior = 0 -- Apenas doses aplicadas localmente
      AND fvv.co_dim_tempo_vacina_aplicada BETWEEN 20260101 AND 20261231
      AND dim_imuno.nu_identificador IN ('42', '22') -- 42=Pentavalente, 22=VIP
    GROUP BY dim_imuno.nu_identificador, dim_imuno.no_imunobiologico
)
SELECT 
    nome_vacina,
    total_d1 AS primeiras_doses_aplicadas,
    total_d3 AS terceiras_doses_aplicadas,
    (total_d1 - total_d3) AS diferenca_abandono,
    ROUND(
        ((total_d1 - total_d3)::numeric / NULLIF(total_d1, 0)) * 100, 2
    ) AS taxa_abandono_pct,
    CASE 
        WHEN ((total_d1 - total_d3)::numeric / NULLIF(total_d1, 0)) * 100 <= 5.0 THEN 'BAIXO ABANDONO (META ATINGIDA)'
        WHEN ((total_d1 - total_d3)::numeric / NULLIF(total_d1, 0)) * 100 BETWEEN 5.01 AND 9.99 THEN 'MÉDIO ABANDONO (ALERTA)'
        ELSE 'ALTO ABANDONO (CRÍTICO / RISCO DE SURTO)'
    END AS status_epidemiologico
FROM aplicacoes;
