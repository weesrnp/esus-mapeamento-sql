-- titulo: Doses Aplicadas por Imunobiológico no Quadrimestre
-- categoria: imunizacao
-- tabelas: tb_dim_imunobiologico, tb_fat_vacinacao_vacina
-- parametros: dt_fim, dt_inicio
-- uso: somente leitura (SET default_transaction_read_only = on)

-- Parâmetros: :dt_inicio (YYYYMMDD), :dt_fim (YYYYMMDD)
SELECT 
    im.sg_imunobiologico,
    im.no_imunobiologico,
    COUNT(vv.co_seq_fat_vacinacao_vacina) AS total_doses,
    COUNT(CASE WHEN vv.st_registro_anterior = 0 THEN 1 END) AS doses_aplicadas_local,
    COUNT(CASE WHEN vv.st_registro_anterior = 1 THEN 1 END) AS doses_transcritas_caderneta
FROM tb_fat_vacinacao_vacina vv
JOIN tb_dim_imunobiologico im ON vv.co_dim_imunobiologico = im.co_seq_dim_imunobiologico
WHERE vv.co_dim_tempo_vacina_aplicada BETWEEN :dt_inicio AND :dt_fim
GROUP BY im.sg_imunobiologico, im.no_imunobiologico
ORDER BY total_doses DESC;
