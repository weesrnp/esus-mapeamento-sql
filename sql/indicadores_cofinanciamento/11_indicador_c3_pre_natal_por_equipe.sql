-- titulo: Indicador C3: Validação Agregada por Equipe (Pré-Natal)
-- categoria: indicadores_cofinanciamento
-- indicador: C3
-- tabelas: tb_acomp_cidadaos_vinculados, tb_dim_cbo, tb_dim_imunobiologico, tb_dim_procedimento, tb_fat_atd_ind_procedimentos, tb_fat_atendimento_individual, tb_fat_atendimento_odonto, tb_fat_cidadao_pec, tb_fat_proced_atend, tb_fat_proced_atend_proced, tb_fat_vacinacao, tb_fat_vacinacao_vacina
-- parametros: ine_1, ine_2, ine_3
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: PA e peso/altura contam registros, não dias distintos; consulta odontológica inclui CBO 3224 (ASB/TSB); gestante sem DUM não entra

-- C3 (gestação e puerpério): boas práticas por gestação, a partir do DW do e-SUS PEC. Agregado (só contagens).
-- psql -v ini=AAAAMMDD -v fim=AAAAMMDD -v ine_1=... -v ine_2=... -v ine_3=...  (1º e último dia da competência avaliada)
-- Gestação = última DUM registrada em atendimento (30001231 = sem DUM); fim da gestação = DUM + 294 dias (o DW
-- não tem a data de desfecho); puerpério = 42 dias depois. Tudo cortado no último dia da competência. Ativa na competência: DUM <= fim e DUM+336 >= ini.
-- E e J (visitas do ACS) ficam de fora: em muitas instalações a visita chega ao DW sem ligação com a pessoa
-- (CNS provisório criado por sistema próprio do município).
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
atd AS (                  -- atendimentos individuais da pessoa, com data e marcadores
    SELECT m.co_cidadao, to_date(a.co_dim_tempo::text, 'YYYYMMDD') AS dia, c.nu_cbo,
           CASE WHEN a.co_dim_tempo_dum <> 30001231 THEN to_date(a.co_dim_tempo_dum::text, 'YYYYMMDD') END AS dum,
           (a.co_dim_tempo_dum <> 30001231 OR a.ds_filtro_ciaps ~ '\|(ABP001|W7[89]|W8[14])\|'
            OR a.ds_filtro_cids ~ '\|(O[0-4][0-9]|Z3[2-6])') AS prenatal,
           (a.ds_filtro_ciaps ~ '\|(ABP002|W18)\|' OR a.ds_filtro_cids ~ '\|Z39') AS puerperal,
           a.nu_pressao_sistolica IS NOT NULL AS pa, (a.nu_peso IS NOT NULL AND a.nu_altura IS NOT NULL) AS peso_alt
    FROM tb_fat_atendimento_individual a JOIN mapa m ON m.id = a.co_fat_cidadao_pec
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = a.co_dim_cbo_1
    WHERE a.co_dim_tempo >= 20240101
),
gest AS (
    SELECT co_cidadao, max(dum) AS dum FROM atd WHERE dum IS NOT NULL GROUP BY 1
),
den AS (
    SELECT v.ine, g.co_cidadao, g.dum, least(g.dum + 294, to_date(:'fim', 'YYYYMMDD')) AS fim_g,  -- corta na competência
           least(g.dum + 336, to_date(:'fim', 'YYYYMMDD')) AS fim_p
    FROM gest g JOIN vinc v USING (co_cidadao)
    WHERE g.dum <= to_date(:'fim', 'YYYYMMDD') AND g.dum + 336 >= to_date(:'ini', 'YYYYMMDD')
),
medenf AS (SELECT * FROM atd WHERE left(nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235')),
pa_extra AS (             -- PA e peso/altura em ficha de procedimento
    SELECT m.co_cidadao, to_date(x.co_dim_tempo::text, 'YYYYMMDD') AS dia,
           x.nu_pressao_sistolica IS NOT NULL AS pa, (x.nu_peso IS NOT NULL AND x.nu_altura IS NOT NULL) AS peso_alt
    FROM tb_fat_proced_atend x JOIN mapa m ON m.id = x.co_fat_cidadao_pec WHERE x.co_dim_tempo >= 20240101
),
testes AS (               -- quadro 07 da nota C3 + códigos internos do e-SUS (ABPG024 HIV, ABPG025 hep C, ABPG026 sífilis)
    SELECT m.co_cidadao, to_date(p.co_dim_tempo::text, 'YYYYMMDD') AS dia,
           CASE WHEN d.co_proced IN ('0214010040', '0214010279', '0214010058', '0213010780', '0213010500', '0202030300', 'ABPG024', 'ABEX018') THEN 'hiv'
                WHEN d.co_proced IN ('0214010074', '0214010082', '0214010252', '0202031098', '0202031110', '0202031179', 'ABPG026') THEN 'sifilis'
                WHEN d.co_proced IN ('0214010104', '0214010236', '0202030784', '0202030970', '0213010208') THEN 'hepb'
                WHEN d.co_proced IN ('0214010090', '0214010309', '0202030059', '0202030679', 'ABPG025') THEN 'hepc' END AS tipo
    FROM (SELECT co_fat_cidadao_pec, co_dim_tempo, co_dim_procedimento FROM tb_fat_proced_atend_proced WHERE co_dim_tempo >= 20240101
          UNION ALL SELECT co_fat_cidadao_pec, co_dim_tempo, co_dim_procedimento_avaliado FROM tb_fat_atd_ind_procedimentos WHERE co_dim_tempo >= 20240101) p
    JOIN mapa m ON m.id = p.co_fat_cidadao_pec
    JOIN tb_dim_procedimento d ON d.co_seq_dim_procedimento = p.co_dim_procedimento
),
dtpa AS (                 -- dTpa adulto: nu_identificador 57 = co_seq_dim_imunobiologico 9 (o co_seq 57 é dengue!)
    SELECT m.co_cidadao, to_date(vv.co_dim_tempo::text, 'YYYYMMDD') AS dia
    FROM tb_fat_vacinacao_vacina vv JOIN tb_fat_vacinacao v ON v.co_seq_fat_vacinacao = vv.co_fat_vacinacao
    JOIN mapa m ON m.id = v.co_fat_cidadao_pec
    JOIN tb_dim_imunobiologico i ON i.co_seq_dim_imunobiologico = vv.co_dim_imunobiologico AND i.nu_identificador = '57'
),
odonto AS (
    SELECT m.co_cidadao, to_date(o.co_dim_tempo::text, 'YYYYMMDD') AS dia
    FROM tb_fat_atendimento_odonto o JOIN mapa m ON m.id = o.co_fat_cidadao_pec
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = o.co_dim_cbo_1 AND left(c.nu_cbo, 4) IN ('2232', '3224')
    WHERE o.co_dim_tempo >= 20240101
),
p AS (
    SELECT d.ine, d.co_cidadao,
      EXISTS (SELECT 1 FROM medenf a WHERE a.co_cidadao = d.co_cidadao AND a.prenatal AND a.dia BETWEEN d.dum AND d.dum + 84) AS a,
      (SELECT count(DISTINCT a.dia) FROM medenf a WHERE a.co_cidadao = d.co_cidadao AND a.prenatal AND a.dia BETWEEN d.dum AND d.fim_g) >= 7 AS b,
      (SELECT count(*) FROM (SELECT dia FROM atd WHERE co_cidadao = d.co_cidadao AND pa AND dia BETWEEN d.dum AND d.fim_g
                             UNION ALL SELECT dia FROM pa_extra WHERE co_cidadao = d.co_cidadao AND pa AND dia BETWEEN d.dum AND d.fim_g) x) >= 7 AS c,
      (SELECT count(*) FROM (SELECT dia FROM atd WHERE co_cidadao = d.co_cidadao AND peso_alt AND dia BETWEEN d.dum AND d.fim_g
                             UNION ALL SELECT dia FROM pa_extra WHERE co_cidadao = d.co_cidadao AND peso_alt AND dia BETWEEN d.dum AND d.fim_g) x) >= 7 AS dd,
      EXISTS (SELECT 1 FROM dtpa t WHERE t.co_cidadao = d.co_cidadao AND t.dia BETWEEN d.dum + 140 AND d.fim_g) AS f,
      (SELECT count(DISTINCT tipo) FROM testes t WHERE t.co_cidadao = d.co_cidadao AND t.dia BETWEEN d.dum AND d.dum + 97) = 4 AS g,
      (SELECT count(DISTINCT tipo) FROM testes t WHERE t.co_cidadao = d.co_cidadao AND t.tipo IN ('hiv', 'sifilis') AND t.dia BETWEEN d.dum + 196 AND d.fim_g) = 2 AS h,
      EXISTS (SELECT 1 FROM medenf a WHERE a.co_cidadao = d.co_cidadao AND a.puerperal AND a.dia BETWEEN d.dum + 196 AND d.fim_p) AS i,
      EXISTS (SELECT 1 FROM odonto o WHERE o.co_cidadao = d.co_cidadao AND o.dia BETWEEN d.dum AND d.fim_g) AS k,
      -- dTpa antes de 20 semanas (glosa vista no Q3)
      EXISTS (SELECT 1 FROM dtpa t WHERE t.co_cidadao = d.co_cidadao AND t.dia BETWEEN d.dum AND d.dum + 139) AS dtpa_cedo
    FROM den d
)
SELECT coalesce(ine, 'TOTAL') AS ine, count(*) AS den,
       count(*) FILTER (WHERE a) AS a, count(*) FILTER (WHERE b) AS b, count(*) FILTER (WHERE c) AS c,
       count(*) FILTER (WHERE dd) AS d, count(*) FILTER (WHERE f) AS f, count(*) FILTER (WHERE g) AS g,
       count(*) FILTER (WHERE h) AS h, count(*) FILTER (WHERE i) AS i, count(*) FILTER (WHERE k) AS k,
       count(*) FILTER (WHERE dtpa_cedo AND NOT f) AS dtpa_so_antes_20sem
FROM p GROUP BY ROLLUP (ine) ORDER BY ine NULLS LAST;
