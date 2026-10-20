-- titulo: Monitoramento da Cobertura de Avaliação do Idoso (Indicador VII ProAPS)
-- categoria: busca_ativa
-- tabelas: tb_dim_ciap, tb_dim_procedimento, tb_fat_atd_ind_problemas, tb_fat_atendimento_individual, tb_fat_cidadao_pec, tb_fat_proced_atend
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: denominador sem deduplicar pessoa nem vínculo à equipe; códigos de avaliação multidimensional a conferir no SIGTAP

-- Relação de idosos (>= 60 anos) e verificação de avaliação multidimensional nos últimos 12 meses
WITH idosos_cadastrados AS (
    SELECT 
        cid.co_seq_fat_cidadao_pec,
        cid.no_cidadao,
        LEFT(cid.nu_cpf_cidadao, 3) || '.***.***-' || RIGHT(cid.nu_cpf_cidadao, 2) AS nu_cpf_cidadao,
        LEFT(cid.nu_cns, 3) || ' **** **** ' || RIGHT(cid.nu_cns, 4) AS nu_cns,
        EXTRACT(YEAR FROM AGE(CURRENT_DATE, TO_DATE(cid.co_dim_tempo_nascimento::text, 'YYYYMMDD'))) AS idade
    FROM tb_fat_cidadao_pec cid
    WHERE COALESCE(cid.st_faleceu, 0) = 0
      AND cid.co_dim_tempo_nascimento IS NOT NULL
      AND cid.co_dim_tempo_nascimento <> 30001231
      AND EXTRACT(YEAR FROM AGE(CURRENT_DATE, TO_DATE(cid.co_dim_tempo_nascimento::text, 'YYYYMMDD'))) >= 60
),
idosos_avaliados AS (
    SELECT DISTINCT
        fat.co_fat_cidadao_pec
    FROM tb_fat_atendimento_individual fat
    WHERE fat.co_dim_tempo >= TO_CHAR(CURRENT_DATE - INTERVAL '12 months', 'YYYYMMDD')::bigint
      AND (
          fat.co_seq_fat_atd_ind IN (
              SELECT co_fat_atd_ind FROM tb_fat_atd_ind_problemas pr
              JOIN tb_dim_ciap ci ON pr.co_dim_ciap = ci.co_seq_dim_ciap
              WHERE ci.nu_ciap IN ('A28', 'P70', 'P20')
          )
          OR fat.co_seq_fat_atd_ind IN (
              SELECT co_fat_atd_ind FROM tb_fat_atd_ind_procedimentos proc
              JOIN tb_dim_procedimento dp ON proc.co_dim_procedimento_avaliado = dp.co_seq_dim_procedimento
              WHERE dp.co_proced IN ('0101030010', '0301010382')
          )
      )
)
SELECT 
    COUNT(i.co_seq_fat_cidadao_pec) AS total_idosos_cadastrados,
    COUNT(a.co_fat_cidadao_pec) AS total_idosos_avaliados_12m,
    ROUND((COUNT(a.co_fat_cidadao_pec)::numeric / NULLIF(COUNT(i.co_seq_fat_cidadao_pec), 0)) * 100, 2) AS percentual_cobertura_ivcf20,
    CASE 
        WHEN (COUNT(a.co_fat_cidadao_pec)::numeric / NULLIF(COUNT(i.co_seq_fat_cidadao_pec), 0)) * 100 >= 30.0 THEN 'META ALCANÇADA (>= 30%)'
        ELSE 'ABAIXO DA META PROAPS (>= 30%)'
    END AS status_proaps
FROM idosos_cadastrados i
LEFT JOIN idosos_avaliados a ON i.co_seq_fat_cidadao_pec = a.co_fat_cidadao_pec;
