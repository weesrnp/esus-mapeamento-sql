-- titulo: Auditoria de Lotes Próximos do Vencimento no Estoque
-- categoria: imunizacao
-- tabelas: tb_imunobiologico, tb_imunobiologico_fabricante, tb_imunobiologico_lote, tb_unidade_saude
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: não considera o saldo do lote: lote zerado também aparece

-- Auditoria de Lotes de Imunobiológicos com Validade Próxima ou Expirada
SELECT 
    un.no_unidade_saude,
    imuno.no_imunobiologico AS vacina,
    lote.ds_lote AS numero_lote,
    fab.no_fabricante AS fabricante,
    lote.dt_validade AS data_validade,
    (lote.dt_validade - CURRENT_DATE) AS dias_para_vencer,
    CASE 
        WHEN lote.dt_validade < CURRENT_DATE THEN '🚨 LOTE EXPIRADO / INTERDITAR'
        WHEN (lote.dt_validade - CURRENT_DATE) <= 30 THEN '⚠️ VENCIMENTO IMINENTE (< 30 DIAS)'
        WHEN (lote.dt_validade - CURRENT_DATE) <= 60 THEN '⚡ ATENÇÃO (< 60 DIAS)'
        ELSE '✅ VALIDADE REGULAR'
    END AS status_validade
FROM tb_imunobiologico_lote lote
INNER JOIN tb_imunobiologico imuno ON imuno.co_imunobiologico = lote.co_imunobiologico
LEFT JOIN tb_imunobiologico_fabricante fab ON fab.co_seq_imunobiologico_fabrcnt = lote.co_imunobiologico_fabricante
LEFT JOIN tb_unidade_saude un ON un.co_seq_unidade_saude = lote.co_unidade_saude
WHERE lote.st_ativo = 1
ORDER BY lote.dt_validade ASC;
