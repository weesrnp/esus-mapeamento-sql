-- titulo: Busca Ativa de Diabéticos sem Solicitação/Avaliação de Hemoglobina Glicada (Indicador C4 - Filtro Detalhado)
-- categoria: busca_ativa
-- tabelas: tb_cidadao, tb_dim_equipe, tb_dim_procedimento, tb_fat_atd_ind_procedimentos, tb_fat_cad_individual, tb_fat_cidadao_pec
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: só HbA1c avaliada (o C4 também aceita solicitada); não exige consulta; liga a pessoa por um único registro do DW

-- Diabéticos cadastrados sem Hemoglobina Glicada nos últimos 6 meses
SELECT 
    cid.no_cidadao,
    LEFT(cid.nu_cpf, 3) || '.***.***-' || RIGHT(cid.nu_cpf, 2) AS nu_cpf_mascarado,
    fci.nu_micro_area,
    de.no_equipe
FROM tb_fat_cad_individual fci
JOIN tb_fat_cidadao_pec pec ON fci.co_fat_cidadao_pec = pec.co_seq_fat_cidadao_pec
JOIN tb_cidadao cid ON pec.co_cidadao = cid.co_seq_cidadao
JOIN tb_dim_equipe de ON fci.co_dim_equipe = de.co_seq_dim_equipe
LEFT JOIN (
    SELECT DISTINCT aip.co_fat_cidadao_pec
    FROM tb_fat_atd_ind_procedimentos aip
    JOIN tb_dim_procedimento dp ON aip.co_dim_procedimento_avaliado = dp.co_seq_dim_procedimento
    WHERE REGEXP_REPLACE(dp.co_proced, '[^0-9A-Za-z]', '', 'g') IN ('0202010503', 'ABEX008')
      AND TO_DATE(aip.co_dim_tempo::text, 'YYYYMMDD') >= (CURRENT_DATE - INTERVAL '6 months')
) ex ON ex.co_fat_cidadao_pec = pec.co_seq_fat_cidadao_pec
WHERE fci.st_diabete = 1
  AND COALESCE(cid.st_faleceu, 0) = 0  -- óbito fica em tb_cidadao
  AND COALESCE(fci.st_ficha_inativa, 0) = 0  -- a FCI não tem st_mudou_se
  AND ex.co_fat_cidadao_pec IS NULL
ORDER BY de.no_equipe, fci.nu_micro_area, cid.no_cidadao;
