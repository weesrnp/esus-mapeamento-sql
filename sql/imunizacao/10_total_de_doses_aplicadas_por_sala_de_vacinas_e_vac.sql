-- titulo: Total de Doses Aplicadas por Sala de Vacinas e Vacinador no Mês
-- categoria: imunizacao
-- tabelas: tb_dim_cbo, tb_dim_profissional, tb_dim_unidade_saude, tb_fat_vacinacao, tb_fat_vacinacao_vacina
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: usa o ano de 2026 inteiro; agrupa pelo nome do vacinador

-- Produtividade de Vacinadores por Unidade de Saúde no Exercício
SELECT 
    un.no_unidade_saude,
    prof.no_profissional AS vacinador,
    cbo.no_cbo,
    COUNT(fvv.co_seq_fat_vacinacao_vacina) AS total_doses_aplicadas,
    COUNT(DISTINCT fv.co_fat_cidadao_pec) AS total_cidadaos_atendidos
FROM tb_fat_vacinacao fv
INNER JOIN tb_fat_vacinacao_vacina fvv ON fvv.co_fat_vacinacao = fv.co_seq_fat_vacinacao
INNER JOIN tb_dim_unidade_saude un ON un.co_seq_dim_unidade_saude = fv.co_dim_unidade_saude
INNER JOIN tb_dim_profissional prof ON prof.co_seq_dim_profissional = fv.co_dim_profissional
INNER JOIN tb_dim_cbo cbo ON cbo.co_seq_dim_cbo = fv.co_dim_cbo
WHERE fvv.st_registro_anterior = 0 -- Apenas doses aplicadas localmente
  AND fv.co_dim_tempo BETWEEN 20260101 AND 20261231
GROUP BY un.no_unidade_saude, prof.no_profissional, cbo.no_cbo
ORDER BY total_doses_aplicadas DESC;
