-- titulo: Indicador C3 (Prática A): Captação Precoce do Pré-Natal por Equipe
-- categoria: indicadores_cofinanciamento
-- indicador: C3
-- tabelas: tb_acomp_cidadaos_vinculados, tb_dim_cbo, tb_fat_atendimento_individual, tb_fat_cidadao_pec
-- parametros: fim, ini
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: só a prática A do C3 (10 de 100 pontos); gestante sem DUM registrada em atendimento não entra; aborto não é excluído

-- C3, prática A: gestantes e puérperas vinculadas com 1ª consulta de pré-natal (médico/enfermeiro) até a 12ª semana.
-- psql -v ini=AAAAMMDD -v fim=AAAAMMDD  (1º e último dia da competência avaliada)
-- Gestação = última DUM registrada em atendimento (30001231 = sem DUM), como em 10_indicador_c3_pre_natal_por_pessoa.
-- Ativa na competência: DUM <= fim e DUM + 336 dias (gestação + puerpério) >= ini. Saída só com contagens.
WITH vinc AS (
    SELECT DISTINCT ON (co_cidadao) co_cidadao, nu_ine_vinc_equipe AS ine,
           nullif(regexp_replace(coalesce(nu_cpf_cidadao, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(nu_cns_cidadao, ''), '\D', '', 'g'), '') AS cns
    FROM tb_acomp_cidadaos_vinculados
    WHERE co_cidadao IS NOT NULL AND nu_ine_vinc_equipe IS NOT NULL
    ORDER BY co_cidadao, nu_ine_vinc_equipe
),
mapa AS (                 -- registro do DW (co_fat_cidadao_pec) → pessoa vinculada
    SELECT f.co_seq_fat_cidadao_pec AS id, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON f.co_cidadao = v.co_cidadao
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cns IS NOT NULL AND f.nu_cns = v.cns
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cpf IS NOT NULL AND f.nu_cpf_cidadao = v.cpf
),
atd AS (                  -- atendimentos desde 336 dias antes da competência (alcança a DUM de quem ainda é puérpera)
    SELECT m.co_cidadao, to_date(a.co_dim_tempo::text, 'YYYYMMDD') AS dia,
           CASE WHEN a.co_dim_tempo_dum <> 30001231 THEN to_date(a.co_dim_tempo_dum::text, 'YYYYMMDD') END AS dum,
           (a.co_dim_tempo_dum <> 30001231 OR a.ds_filtro_ciaps ~ '\|(ABP001|W7[89]|W8[14])\|'
            OR a.ds_filtro_cids ~ '\|(O[0-4][0-9]|Z3[2-6])') AS prenatal,
           left(c.nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235') AS medenf
    FROM tb_fat_atendimento_individual a JOIN mapa m ON m.id = a.co_fat_cidadao_pec
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = a.co_dim_cbo_1
    WHERE a.co_dim_tempo BETWEEN to_char(to_date(:'ini', 'YYYYMMDD') - 336, 'YYYYMMDD')::bigint AND :fim
),
gest AS (
    SELECT co_cidadao, max(dum) AS dum FROM atd WHERE dum IS NOT NULL GROUP BY 1
),
den AS (
    SELECT v.ine, g.co_cidadao, g.dum
    FROM gest g JOIN vinc v USING (co_cidadao)
    WHERE g.dum <= to_date(:'fim', 'YYYYMMDD') AND g.dum + 336 >= to_date(:'ini', 'YYYYMMDD')
),
num AS (                  -- 1ª consulta de pré-natal entre a DUM e a 12ª semana (84 dias)
    SELECT DISTINCT d.co_cidadao
    FROM den d JOIN atd a ON a.co_cidadao = d.co_cidadao AND a.medenf AND a.prenatal AND a.dia BETWEEN d.dum AND d.dum + 84
)
SELECT d.ine, count(*) AS gestantes_e_puerperas, count(n.co_cidadao) AS com_consulta_ate_12_semanas,
       round(100.0 * count(n.co_cidadao) / nullif(count(*), 0), 1) AS pct_captacao_precoce
FROM den d LEFT JOIN num n USING (co_cidadao)
GROUP BY ROLLUP (d.ine) ORDER BY d.ine NULLS LAST;
