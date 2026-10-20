-- titulo: Monitoramento do Indicador X do ProAPS (População 40-74 anos com RCV Avaliado)
-- categoria: busca_ativa
-- tabelas: tb_dim_ciap, tb_fat_atd_ind_problemas, tb_fat_atendimento_individual, tb_fat_cidadao_pec
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: denominador sem deduplicar pessoa nem vínculo à equipe; usa CIAP de diagnóstico como avaliação de RCV; meta de 30% sem fonte

-- Percentual de cidadãos de 40 a 74 anos com Risco Cardiovascular avaliado nos últimos 12 meses
WITH populacao_alvo AS (
    SELECT 
        co_seq_fat_cidadao_pec,
        no_cidadao,
        LEFT(nu_cpf_cidadao, 3) || '.***.***-' || RIGHT(nu_cpf_cidadao, 2) AS nu_cpf_cidadao,
        LEFT(nu_cns, 3) || ' **** **** ' || RIGHT(nu_cns, 4) AS nu_cns,
        co_dim_tempo_nascimento,
        EXTRACT(YEAR FROM AGE(CURRENT_DATE, TO_DATE(co_dim_tempo_nascimento::text, 'YYYYMMDD'))) AS idade
    FROM tb_fat_cidadao_pec
    WHERE COALESCE(st_faleceu, 0) = 0
      AND co_dim_tempo_nascimento IS NOT NULL
      AND co_dim_tempo_nascimento <> 30001231
      AND EXTRACT(YEAR FROM AGE(CURRENT_DATE, TO_DATE(co_dim_tempo_nascimento::text, 'YYYYMMDD'))) BETWEEN 40 AND 74
),
avaliados_rcv AS (
    SELECT DISTINCT
        fat.co_fat_cidadao_pec
    FROM tb_fat_atendimento_individual fat
    WHERE fat.co_dim_tempo >= TO_CHAR(CURRENT_DATE - INTERVAL '12 months', 'YYYYMMDD')::bigint
      AND fat.co_seq_fat_atd_ind IN (
          SELECT co_fat_atd_ind FROM tb_fat_atd_ind_problemas pr
          JOIN tb_dim_ciap ci ON pr.co_dim_ciap = ci.co_seq_dim_ciap
          WHERE ci.nu_ciap IN ('K22', 'K86', 'K87', 'T90')
      )
)
SELECT 
    COUNT(p.co_seq_fat_cidadao_pec) AS total_populacao_40_74,
    COUNT(a.co_fat_cidadao_pec) AS total_avaliados_12m,
    ROUND((COUNT(a.co_fat_cidadao_pec)::numeric / NULLIF(COUNT(p.co_seq_fat_cidadao_pec), 0)) * 100, 2) AS percentual_cobertura_rcv,
    CASE 
        WHEN (COUNT(a.co_fat_cidadao_pec)::numeric / NULLIF(COUNT(p.co_seq_fat_cidadao_pec), 0)) * 100 >= 30.0 THEN 'META ALCANÇADA (>= 30%)'
        ELSE 'ABAIXO DA META PROAPS'
    END AS status_proaps
FROM populacao_alvo p
LEFT JOIN avaliados_rcv a ON p.co_seq_fat_cidadao_pec = a.co_fat_cidadao_pec;
