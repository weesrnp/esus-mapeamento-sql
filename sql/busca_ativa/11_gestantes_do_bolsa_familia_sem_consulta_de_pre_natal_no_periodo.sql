-- titulo: Gestantes do Bolsa Família sem Consulta de Pré-Natal no Período
-- categoria: busca_ativa
-- tabelas: tb_acomp_cidadaos_vinculados, tb_cidadao, tb_cidadao_bolsa_familia, tb_dim_cbo, tb_fat_atendimento_individual, tb_fat_cidadao_pec, tb_importacao_bolsa_familia
-- parametros: fim, ini
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: documento do PBF casado pelo tipo lido no texto de tp_documento (tipo vazio ou desconhecido casa com NIS, CPF e CNS); só entra gestante com DUM registrada em atendimento (a que a UBS ainda não captou não aparece)

-- Condicionalidade de saúde do PBF: gestante com pré-natal na vigência. Gestante = última DUM registrada por médico ou
-- enfermeiro há no máximo 294 dias do fim do período; pré-natal = consulta de médico ou enfermeiro de pré-natal no período.
-- psql -v ini=AAAAMMDD -v fim=AAAAMMDD
-- Beneficiários da vigência mais recente do Bolsa Família importada no PEC. O arquivo não traz co_fat_cidadao_pec:
-- o documento (NIS, CPF ou CNS) é casado com tb_cidadao e a pessoa é ligada ao DW por co_cidadao, CPF ou CNS.
-- Saída sem NIS, nome da mãe, telefone ou endereço; CPF e CNS mascarados.
WITH vig AS (             -- vigência mais recente importada no PEC (inclui arquivos complementares da mesma vigência)
    SELECT DISTINCT ds_vigencia FROM tb_importacao_bolsa_familia WHERE st_vig_mais_recente_localidade = 1
),
doc AS (
    SELECT DISTINCT regexp_replace(b.nu_documento, '\D', '', 'g') AS nu, upper(coalesce(b.tp_documento, '')) AS tp
    FROM tb_cidadao_bolsa_familia b
    JOIN tb_importacao_bolsa_familia i ON i.co_seq_importaca_bolsa_familia = b.co_importacao_bolsa_familia
    JOIN vig ON vig.ds_vigencia = i.ds_vigencia
),
cid AS (                  -- chaves do cidadão do PEC, só números
    SELECT co_seq_cidadao AS co_cidadao, no_cidadao, dt_nascimento AS nasc,
           nullif(regexp_replace(coalesce(nu_nis_pis_pasep, ''), '\D', '', 'g'), '') AS nis,
           nullif(regexp_replace(coalesce(nu_cpf, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(nu_cns, ''), '\D', '', 'g'), '') AS cns
    FROM tb_cidadao WHERE coalesce(st_faleceu, 0) = 0 AND coalesce(st_ativo, 1) = 1
),
benef AS (                -- o arquivo do PBF não liga ao DW: casa o documento com NIS, CPF ou CNS do cidadão
    SELECT c.* FROM cid c WHERE c.co_cidadao IN (
        SELECT c2.co_cidadao FROM cid c2 JOIN doc ON doc.nu = c2.nis AND doc.tp !~ '(CPF|CNS)'
        UNION SELECT c2.co_cidadao FROM cid c2 JOIN doc ON doc.nu = c2.cpf AND doc.tp !~ '(NIS|CNS)'
        UNION SELECT c2.co_cidadao FROM cid c2 JOIN doc ON doc.nu = c2.cns AND doc.tp !~ '(NIS|CPF)')
),
vinc AS (                 -- equipe e microárea do vínculo atual (sem vínculo: ine nulo)
    SELECT DISTINCT ON (co_cidadao) co_cidadao, nu_ine_vinc_equipe AS ine,
           coalesce(nu_micro_area_domicilio, nu_micro_area_tb_cidadao) AS microarea
    FROM tb_acomp_cidadaos_vinculados WHERE co_cidadao IN (SELECT co_cidadao FROM benef)
    ORDER BY co_cidadao, dt_ultima_atualizacao_cidadao DESC NULLS LAST
),
mapa AS (
    SELECT f.co_seq_fat_cidadao_pec AS id, b.co_cidadao FROM tb_fat_cidadao_pec f JOIN benef b ON f.co_cidadao = b.co_cidadao
    UNION SELECT f.co_seq_fat_cidadao_pec, b.co_cidadao FROM tb_fat_cidadao_pec f JOIN benef b ON b.cns IS NOT NULL AND f.nu_cns = b.cns
    UNION SELECT f.co_seq_fat_cidadao_pec, b.co_cidadao FROM tb_fat_cidadao_pec f JOIN benef b ON b.cpf IS NOT NULL AND f.nu_cpf_cidadao = b.cpf
),
atd AS (                  -- atendimentos de médico/enfermeiro desde 294 dias antes do fim (alcança a DUM da gestação atual)
    SELECT m.co_cidadao, a.co_dim_tempo,
           CASE WHEN a.co_dim_tempo_dum <> 30001231 THEN to_date(a.co_dim_tempo_dum::text, 'YYYYMMDD') END AS dum,
           (a.co_dim_tempo_dum <> 30001231 OR a.ds_filtro_ciaps ~ '\|(ABP001|W7[89]|W8[14])\|'
            OR a.ds_filtro_cids ~ '\|(O[0-4][0-9]|Z3[2-6])') AS prenatal
    FROM tb_fat_atendimento_individual a JOIN mapa m ON m.id = a.co_fat_cidadao_pec
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = a.co_dim_cbo_1 AND left(c.nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235')
    WHERE a.co_dim_tempo BETWEEN to_char(to_date(:'fim', 'YYYYMMDD') - 294, 'YYYYMMDD')::bigint AND :fim
),
gest AS (                 -- gestante no fim do período: última DUM há no máximo 294 dias (42 semanas)
    SELECT co_cidadao, max(dum) AS dum FROM atd WHERE dum IS NOT NULL GROUP BY 1
    HAVING max(dum) > to_date(:'fim', 'YYYYMMDD') - 294
),
prenatal AS (
    SELECT co_cidadao, max(co_dim_tempo) AS ultima FROM atd WHERE prenatal AND co_dim_tempo >= :ini GROUP BY 1
)
SELECT v.ine, v.microarea, b.no_cidadao, g.dum, (to_date(:'fim', 'YYYYMMDD') - g.dum) / 7 AS semanas_no_fim,
       CASE WHEN length(b.cpf) = 11 THEN left(b.cpf, 3) || '.***.***-' || right(b.cpf, 2) END AS cpf_mascarado,
       CASE WHEN length(b.cns) = 15 THEN left(b.cns, 3) || '********' || right(b.cns, 4) END AS cns_mascarado
FROM benef b JOIN gest g USING (co_cidadao) LEFT JOIN vinc v USING (co_cidadao)
WHERE NOT EXISTS (SELECT 1 FROM prenatal p WHERE p.co_cidadao = b.co_cidadao)
ORDER BY v.ine NULLS LAST, v.microarea NULLS LAST, b.no_cidadao;
