-- titulo: Auditoria de Doses Inválidas no Banco de Dados (Detecção de Erros)
-- categoria: imunizacao
-- tabelas: tb_dim_dose_imunobiologico, tb_dim_imunobiologico, tb_fat_cidadao_pec, tb_fat_vacinacao, tb_fat_vacinacao_vacina
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: confere só pentavalente D1 antes de 42 dias de vida

-- Identificação de Doses Inválidas Aplicadas Precocemente (Pentavalente < 42 dias de vida)
SELECT 
    c.no_cidadao,
    CONCAT(SUBSTRING(c.nu_cpf_cidadao, 1, 3), '.***.***-', SUBSTRING(c.nu_cpf_cidadao, 10, 2)) AS cpf_mascarado,
    TO_DATE(c.co_dim_tempo_nascimento::text, 'YYYYMMDD') AS dt_nascimento,
    TO_DATE(fvv.co_dim_tempo_vacina_aplicada::text, 'YYYYMMDD') AS data_aplicacao,
    (TO_DATE(fvv.co_dim_tempo_vacina_aplicada::text, 'YYYYMMDD') - TO_DATE(c.co_dim_tempo_nascimento::text, 'YYYYMMDD')) AS dias_de_vida_na_aplicacao,
    dim_imuno.no_imunobiologico AS vacina,
    dim_dose.no_dose_imunobiologico AS dose_registrada,
    'DOSE PRECOCE (< 42 DIAS) - EXIGE REVACINAÇÃO' AS motivo_invalidez
FROM tb_fat_vacinacao fv
INNER JOIN tb_fat_vacinacao_vacina fvv ON fvv.co_fat_vacinacao = fv.co_seq_fat_vacinacao
INNER JOIN tb_fat_cidadao_pec c ON c.co_seq_fat_cidadao_pec = fv.co_fat_cidadao_pec
INNER JOIN tb_dim_imunobiologico dim_imuno ON dim_imuno.co_seq_dim_imunobiologico = fvv.co_dim_imunobiologico
INNER JOIN tb_dim_dose_imunobiologico dim_dose ON dim_dose.co_seq_dim_dose_imunobiologico = fvv.co_dim_dose_imunobiologico
WHERE dim_imuno.nu_identificador = '42' -- Pentavalente
  AND dim_dose.co_seq_dim_dose_imunobiologico = 1 -- 1ª Dose
  AND c.co_dim_tempo_nascimento IS NOT NULL
  AND c.co_dim_tempo_nascimento <> 30001231
  AND (TO_DATE(fvv.co_dim_tempo_vacina_aplicada::text, 'YYYYMMDD') - TO_DATE(c.co_dim_tempo_nascimento::text, 'YYYYMMDD')) < 42
ORDER BY data_aplicacao DESC;
