-- titulo: Query 2: Taxa de Abandono Vacinal por Unidade de Saúde (D1 vs D3 Pentavalente)
-- categoria: imunizacao
-- tabelas: tb_dim_imunobiologico, tb_dim_unidade_saude, tb_fat_vacinacao, tb_fat_vacinacao_vacina
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: faixas de abandono diferentes das do imunizacao/04; usa a data do registro, não a da aplicação

WITH doses_aplicadas AS (
    SELECT 
        fv.co_dim_unidade_saude,
        un.no_unidade_saude,
        COUNT(CASE WHEN fvv.co_dim_dose_imunobiologico = 1 THEN 1 END) AS total_d1,
        COUNT(CASE WHEN fvv.co_dim_dose_imunobiologico = 3 THEN 1 END) AS total_d3
    FROM tb_fat_vacinacao fv
    INNER JOIN tb_fat_vacinacao_vacina fvv ON fvv.co_fat_vacinacao = fv.co_seq_fat_vacinacao
    INNER JOIN tb_dim_imunobiologico dim_imuno ON dim_imuno.co_seq_dim_imunobiologico = fvv.co_dim_imunobiologico
    INNER JOIN tb_dim_unidade_saude un ON un.co_seq_dim_unidade_saude = fv.co_dim_unidade_saude
    WHERE dim_imuno.nu_identificador = '42' -- Pentavalente
      AND fvv.st_registro_anterior = 0 -- Apenas doses aplicadas na UBS
      AND dim_imuno.st_registro_valido = 1
      AND fv.co_dim_tempo BETWEEN 20260101 AND 20261231
    GROUP BY fv.co_dim_unidade_saude, un.no_unidade_saude
)
SELECT 
    no_unidade_saude,
    total_d1,
    total_d3,
    (total_d1 - total_d3) AS doses_evadidas,
    ROUND(((total_d1 - total_d3)::numeric / NULLIF(total_d1, 0)::numeric) * 100, 2) AS taxa_abandono_pct,
    CASE 
        WHEN ((total_d1 - total_d3)::numeric / NULLIF(total_d1, 0)::numeric) * 100 <= 5.0 THEN 'BAIXO ABANDONO (META CUMPRIDA)'
        WHEN ((total_d1 - total_d3)::numeric / NULLIF(total_d1, 0)::numeric) * 100 <= 10.0 THEN 'MEDIO ABANDONO (ALERTA)'
        ELSE 'ALTO ABANDONO (CRITICO)'
    END AS classificacao_risco
FROM doses_aplicadas
ORDER BY taxa_abandono_pct DESC;
