-- titulo: Indicador C4: Validação Agregada por Equipe (Diabetes)
-- categoria: indicadores_cofinanciamento
-- indicador: C4
-- tabelas: tb_acomp_cidadaos_vinculados, tb_dim_cbo, tb_dim_equipe, tb_dim_procedimento, tb_fat_atd_ind_procedimentos, tb_fat_atendimento_individual, tb_fat_cidadao_pec, tb_fat_proced_atend, tb_fat_proced_atend_proced, tb_fat_visita_domiciliar
-- parametros: fim, ine_1, ine_2, ine_3, ini12, ini6
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: avaliação dos pés só pelo código SIGTAP; a prática D pode não fechar quando a visita cai em CNS provisório

-- C4 (diabetes): as 6 boas práticas por pessoa e a nota da equipe (A 20, B 15, C 15, D 20, E 15, F 15 pontos).
-- psql -v fim=AAAAMMDD (fim da competência) -v ini6=AAAAMMDD (fim - 6 meses) -v ini12=AAAAMMDD (fim - 12 meses)
--      -v ine_1=... -v ine_2=... -v ine_3=...  (INE com zeros à esquerda)
-- Mesma estrutura do C5 (13_indicador_c5_hipertensao_por_equipe): pessoa casada por co_cidadao, CPF ou CNS.
WITH vinc AS (
    SELECT DISTINCT ON (co_cidadao) co_cidadao, nu_ine_vinc_equipe AS ine,
           nullif(regexp_replace(coalesce(nu_cpf_cidadao, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(nu_cns_cidadao, ''), '\D', '', 'g'), '') AS cns
    FROM tb_acomp_cidadaos_vinculados
    WHERE nu_ine_vinc_equipe IN (:'ine_1', :'ine_2', :'ine_3') AND co_cidadao IS NOT NULL
    ORDER BY co_cidadao, nu_ine_vinc_equipe
),
mapa AS (
    SELECT f.co_seq_fat_cidadao_pec AS id, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON f.co_cidadao = v.co_cidadao
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cns IS NOT NULL AND f.nu_cns = v.cns
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cpf IS NOT NULL AND f.nu_cpf_cidadao = v.cpf
),
den AS (                  -- diabetes avaliada por médico/enfermeiro (nota C4): CID E10, E11, E14 (gravado sem ponto),
                          -- CIAP T89, T90 ou código rápido ABP006. Autorrelato da FCI não basta.
    SELECT DISTINCT v.co_cidadao, v.ine
    FROM tb_fat_atendimento_individual a JOIN mapa m ON m.id = a.co_fat_cidadao_pec
    JOIN vinc v ON v.co_cidadao = m.co_cidadao
    JOIN tb_dim_cbo cb ON cb.co_seq_dim_cbo = a.co_dim_cbo_1 AND left(cb.nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235')
    WHERE (a.ds_filtro_cids ~ '\|(E1[014][0-9]?|ABP006)\|' OR a.ds_filtro_ciaps ~ '\|(T89|T90|ABP006)\|')
),
pa AS (                   -- (A) consulta médico/enfermeiro em 6 meses, profissional lotado na eSF
    SELECT DISTINCT m.co_cidadao FROM tb_fat_atendimento_individual a JOIN mapa m ON m.id = a.co_fat_cidadao_pec
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = a.co_dim_cbo_1
    JOIN tb_dim_equipe e ON e.co_seq_dim_equipe = a.co_dim_equipe_1
    WHERE a.co_dim_tempo BETWEEN :ini6 AND :fim AND left(c.nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235')
      AND e.nu_ine IN (:'ine_1', :'ine_2', :'ine_3')
),
pb AS (                   -- (B) aferição de PA em 6 meses: campo PA ou SIGTAP 0301100039 / ABPG033
    SELECT m.co_cidadao FROM tb_fat_atendimento_individual x JOIN mapa m ON m.id = x.co_fat_cidadao_pec
        WHERE x.co_dim_tempo BETWEEN :ini6 AND :fim AND x.nu_pressao_sistolica IS NOT NULL
    UNION SELECT m.co_cidadao FROM tb_fat_proced_atend x JOIN mapa m ON m.id = x.co_fat_cidadao_pec
        WHERE x.co_dim_tempo BETWEEN :ini6 AND :fim AND x.nu_pressao_sistolica IS NOT NULL
    UNION SELECT m.co_cidadao FROM tb_fat_proced_atend_proced p JOIN mapa m ON m.id = p.co_fat_cidadao_pec
        JOIN tb_dim_procedimento d ON d.co_seq_dim_procedimento = p.co_dim_procedimento
        WHERE p.co_dim_tempo BETWEEN :ini6 AND :fim AND d.co_proced IN ('0301100039', 'ABPG033')
),
pc AS (                   -- (C) peso e altura no mesmo registro em 12 meses
    SELECT m.co_cidadao FROM tb_fat_atendimento_individual x JOIN mapa m ON m.id = x.co_fat_cidadao_pec
        WHERE x.co_dim_tempo BETWEEN :ini12 AND :fim AND x.nu_peso IS NOT NULL AND x.nu_altura IS NOT NULL
    UNION SELECT m.co_cidadao FROM tb_fat_proced_atend x JOIN mapa m ON m.id = x.co_fat_cidadao_pec
        WHERE x.co_dim_tempo BETWEEN :ini12 AND :fim AND x.nu_peso IS NOT NULL AND x.nu_altura IS NOT NULL
    UNION SELECT m.co_cidadao FROM tb_fat_visita_domiciliar x JOIN mapa m ON m.id = x.co_fat_cidadao_pec
        WHERE x.co_dim_tempo BETWEEN :ini12 AND :fim AND x.nu_peso IS NOT NULL AND x.nu_altura IS NOT NULL
),
pd AS (                   -- (D) 2+ visitas ACS/TACS, 30+ dias entre a 1ª e a última, em 12 meses
                          -- (nota C4, quadro 05: "todas as opções de preenchimento" do desfecho valem; o C5 publicado
                          -- filtra desfecho realizado)
    SELECT m.co_cidadao FROM tb_fat_visita_domiciliar v JOIN mapa m ON m.id = v.co_fat_cidadao_pec
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = v.co_dim_cbo
    WHERE v.co_dim_tempo BETWEEN :ini12 AND :fim AND c.nu_cbo IN ('515105', '322255')
    GROUP BY 1
    HAVING max(to_date(v.co_dim_tempo::text, 'YYYYMMDD')) - min(to_date(v.co_dim_tempo::text, 'YYYYMMDD')) >= 30
),
proc12 AS (               -- procedimentos avaliados ou solicitados em 12 meses (atendimento individual e ficha de procedimentos)
    SELECT p.co_fat_cidadao_pec, d.co_proced, c.nu_cbo
    FROM tb_fat_atd_ind_procedimentos p
    JOIN tb_dim_procedimento d ON d.co_seq_dim_procedimento IN (p.co_dim_procedimento_avaliado, p.co_dim_procedimento_solicitado)
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = p.co_dim_cbo_1
    WHERE p.co_dim_tempo BETWEEN :ini12 AND :fim AND d.co_proced IN ('0202010503', 'ABEX008', '0301040095')
    UNION ALL
    SELECT p.co_fat_cidadao_pec, d.co_proced, c.nu_cbo
    FROM tb_fat_proced_atend_proced p
    JOIN tb_dim_procedimento d ON d.co_seq_dim_procedimento = p.co_dim_procedimento
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = p.co_dim_cbo
    WHERE p.co_dim_tempo BETWEEN :ini12 AND :fim AND d.co_proced IN ('0202010503', 'ABEX008', '0301040095')
),
pe AS (                   -- (E) hemoglobina glicada solicitada ou avaliada em 12 meses (SIGTAP 0202010503 / ABEX008);
                          -- CBOs do quadro 06 da nota: médicos, enfermeiros, 3222, dentistas e nutricionistas
    SELECT DISTINCT m.co_cidadao FROM proc12 x JOIN mapa m ON m.id = x.co_fat_cidadao_pec
    WHERE x.co_proced IN ('0202010503', 'ABEX008')
      AND left(x.nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235', '3222', '2232', '2237')
),
pf AS (                   -- (F) avaliação dos pés em 12 meses (SIGTAP 0301040095, exame do pé diabético);
                          -- CBOs do quadro 07: médicos, enfermeiros, farmacêuticos, fisioterapeutas, terapeutas ocupacionais
    SELECT DISTINCT m.co_cidadao FROM proc12 x JOIN mapa m ON m.id = x.co_fat_cidadao_pec
    WHERE x.co_proced = '0301040095'
      AND left(x.nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235', '2234', '2236', '2239')
),
p AS (
    SELECT d.ine,
           (d.co_cidadao IN (SELECT co_cidadao FROM pa))::int AS a, (d.co_cidadao IN (SELECT co_cidadao FROM pb))::int AS b,
           (d.co_cidadao IN (SELECT co_cidadao FROM pc))::int AS c, (d.co_cidadao IN (SELECT co_cidadao FROM pd))::int AS dd,
           (d.co_cidadao IN (SELECT co_cidadao FROM pe))::int AS e, (d.co_cidadao IN (SELECT co_cidadao FROM pf))::int AS f
    FROM den d
)
SELECT ine, count(*) AS den, sum(a) AS a, sum(b) AS b, sum(c) AS c, sum(dd) AS d, sum(e) AS e, sum(f) AS f,
       round(sum(20 * a + 15 * b + 15 * c + 20 * dd + 15 * e + 15 * f)::numeric / nullif(count(*), 0), 1) AS nota_c4
FROM p GROUP BY ROLLUP (ine) ORDER BY ine NULLS LAST;
