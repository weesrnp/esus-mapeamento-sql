-- titulo: Indicador C5: Validação Nominal por Pessoa (Hipertensão)
-- categoria: indicadores_cofinanciamento
-- indicador: C5
-- tabelas: tb_acomp_cidadaos_vinculados, tb_dim_cbo, tb_dim_equipe, tb_dim_unidade_saude, tb_fat_atendimento_individual, tb_fat_cidadao_pec, tb_fat_visita_domiciliar
-- parametros: cpf, fim, ine_1, ine_2, ine_3, ini12, ini6
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: DISTINCT ON sem ORDER BY no CTE alvo; a prática B só olha o atendimento individual

WITH alvo AS (
    SELECT DISTINCT ON (co_cidadao) co_cidadao, nu_ine_vinc_equipe AS ine, st_possui_fci, st_possui_fcdt,
           nullif(regexp_replace(coalesce(nu_cns_cidadao, ''), '\D', '', 'g'), '') AS cns
    FROM tb_acomp_cidadaos_vinculados WHERE regexp_replace(nu_cpf_cidadao, '\D', '', 'g') = :'cpf'
),
ids AS (   -- todos os registros da pessoa no DW (são vários: ver Armadilhas)
    SELECT f.co_seq_fat_cidadao_pec AS id FROM tb_fat_cidadao_pec f, alvo a
    WHERE f.co_cidadao = a.co_cidadao OR f.nu_cpf_cidadao = :'cpf' OR (a.cns IS NOT NULL AND f.nu_cns = a.cns)
),
cons AS (
    SELECT a.co_dim_tempo AS dia, c.nu_cbo, e.nu_ine, u.nu_cnes, a.ds_filtro_cids, a.ds_filtro_ciaps,
           a.nu_pressao_sistolica IS NOT NULL AS pa, (a.nu_peso IS NOT NULL AND a.nu_altura IS NOT NULL) AS peso_alt
    FROM tb_fat_atendimento_individual a
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = a.co_dim_cbo_1
    LEFT JOIN tb_dim_equipe e ON e.co_seq_dim_equipe = a.co_dim_equipe_1
    LEFT JOIN tb_dim_unidade_saude u ON u.co_seq_dim_unidade_saude = a.co_dim_unidade_saude_1
    WHERE a.co_fat_cidadao_pec IN (SELECT id FROM ids) AND a.co_dim_tempo BETWEEN :ini12 AND :fim
),
vis AS (
    SELECT v.co_dim_tempo AS dia FROM tb_fat_visita_domiciliar v JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = v.co_dim_cbo
    WHERE v.co_fat_cidadao_pec IN (SELECT id FROM ids) AND v.co_dim_tempo BETWEEN :ini12 AND :fim
      AND c.nu_cbo IN ('515105', '322255') AND v.co_dim_desfecho_visita = 1
)
SELECT 'vinculado (INE)' AS item, coalesce((SELECT ine FROM alvo), 'NÃO: fora da tb_acomp_cidadaos_vinculados') AS resultado
UNION ALL SELECT 'tem FCI / FCDT', (SELECT st_possui_fci || ' / ' || st_possui_fcdt FROM alvo)
UNION ALL SELECT 'registros no DW para a pessoa', (SELECT count(*)::text FROM ids)
UNION ALL SELECT '(A) consulta med/enf 6m em eSF', (SELECT CASE WHEN count(*) > 0 THEN 'SIM (' || max(dia) || ')' ELSE 'NÃO' END FROM cons
    WHERE dia >= :ini6 AND left(nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235') AND nu_ine IN (:'ine_1', :'ine_2', :'ine_3'))
UNION ALL SELECT '   consulta med/enf 6m SEM equipe eSF', (SELECT count(*)::text FROM cons
    WHERE dia >= :ini6 AND left(nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235') AND coalesce(nu_ine, '-') NOT IN (:'ine_1', :'ine_2', :'ine_3'))
UNION ALL SELECT '(B) PA 6m (atendimento individual)', (SELECT CASE WHEN bool_or(pa) THEN 'SIM' ELSE 'NÃO no atendimento individual (ver ficha de procedimentos)' END FROM cons WHERE dia >= :ini6)
UNION ALL SELECT '(C) peso+altura 12m (atendimento individual)', (SELECT CASE WHEN bool_or(peso_alt) THEN 'SIM' ELSE 'NÃO no atendimento individual (ver visita domiciliar)' END FROM cons)
UNION ALL SELECT '(D) visitas ACS 12m ligadas à pessoa', (SELECT count(*) || ' (visitas sem ligação com a pessoa no DW não entram: conferir no painel do ministério)' FROM vis);
