-- titulo: Busca Ativa de Hipertensos sem Aferição de PA no Semestre (Indicador C5 - Filtro Detalhado)
-- categoria: busca_ativa
-- tabelas: tb_cidadao, tb_dim_equipe, tb_fat_atendimento_individual, tb_fat_cad_individual, tb_fat_cidadao_pec
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: usa todas as fichas de cadastro (não só a mais recente); PA só do atendimento individual; liga a pessoa por um único registro do DW

-- Hipertensos cadastrados sem aferição de PA ou consulta nos últimos 6 meses
SELECT 
    cid.no_cidadao,
    LEFT(cid.nu_cpf, 3) || '.***.***-' || RIGHT(cid.nu_cpf, 2) AS nu_cpf_mascarado,
    fci.nu_micro_area,
    de.no_equipe,
    MAX(TO_DATE(ai.co_dim_tempo::text, 'YYYYMMDD')) AS dt_ultima_pa
FROM tb_fat_cad_individual fci
JOIN tb_fat_cidadao_pec pec ON fci.co_fat_cidadao_pec = pec.co_seq_fat_cidadao_pec
JOIN tb_cidadao cid ON pec.co_cidadao = cid.co_seq_cidadao
JOIN tb_dim_equipe de ON fci.co_dim_equipe = de.co_seq_dim_equipe
LEFT JOIN tb_fat_atendimento_individual ai ON ai.co_fat_cidadao_pec = pec.co_seq_fat_cidadao_pec 
     AND ai.nu_pressao_sistolica IS NOT NULL
     AND TO_DATE(ai.co_dim_tempo::text, 'YYYYMMDD') >= (CURRENT_DATE - INTERVAL '6 months')
WHERE fci.st_hipertensao_arterial = 1
  AND COALESCE(cid.st_faleceu, 0) = 0  -- óbito fica em tb_cidadao
  AND COALESCE(fci.st_ficha_inativa, 0) = 0  -- a FCI não tem st_mudou_se
GROUP BY cid.no_cidadao, cid.nu_cpf, fci.nu_micro_area, de.no_equipe
HAVING MAX(TO_DATE(ai.co_dim_tempo::text, 'YYYYMMDD')) IS NULL
ORDER BY de.no_equipe, fci.nu_micro_area, cid.no_cidadao;
