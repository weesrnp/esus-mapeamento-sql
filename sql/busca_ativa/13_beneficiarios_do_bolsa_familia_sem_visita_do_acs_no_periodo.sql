-- titulo: Beneficiários do Bolsa Família sem Visita Domiciliar do ACS no Período
-- categoria: busca_ativa
-- tabelas: tb_acomp_cidadaos_vinculados, tb_cidadao, tb_cidadao_bolsa_familia, tb_dim_cbo, tb_dim_desfecho_visita, tb_fat_cidadao_pec, tb_fat_visita_domiciliar, tb_importacao_bolsa_familia
-- parametros: fim, ini
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: documento do PBF casado pelo tipo lido no texto de tp_documento (tipo vazio ou desconhecido casa com NIS, CPF e CNS); visita gravada com CNS provisório (criado fora do PEC) não liga à pessoa

-- Beneficiários sem visita domiciliar realizada por ACS/TACS (CBO 515105, 322255) entre :ini e :fim, com a data da
-- última visita realizada até o fim do período. O desfecho "realizada" é lido pela descrição da dimensão.
-- psql -v ini=AAAAMMDD -v fim=AAAAMMDD  (ex.: o quadrimestre)
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
visita AS (
    SELECT m.co_cidadao, max(vd.co_dim_tempo) AS ultima,
           bool_or(vd.co_dim_tempo >= :ini) AS no_periodo
    FROM tb_fat_visita_domiciliar vd JOIN mapa m ON m.id = vd.co_fat_cidadao_pec
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = vd.co_dim_cbo AND c.nu_cbo IN ('515105', '322255')
    JOIN tb_dim_desfecho_visita d ON d.co_seq_dim_desfecho_visita = vd.co_dim_desfecho_visita
         AND lower(d.ds_desfecho_visita) ~ 'realizad'
    WHERE vd.co_dim_tempo <= :fim
    GROUP BY m.co_cidadao
)
SELECT v.ine, v.microarea, b.no_cidadao, b.nasc AS dt_nascimento,
       CASE WHEN length(b.cpf) = 11 THEN left(b.cpf, 3) || '.***.***-' || right(b.cpf, 2) END AS cpf_mascarado,
       CASE WHEN length(b.cns) = 15 THEN left(b.cns, 3) || '********' || right(b.cns, 4) END AS cns_mascarado,
       to_date(vi.ultima::text, 'YYYYMMDD') AS ultima_visita
FROM benef b LEFT JOIN vinc v USING (co_cidadao) LEFT JOIN visita vi USING (co_cidadao)
WHERE coalesce(vi.no_periodo, false) = false
ORDER BY v.ine NULLS LAST, v.microarea NULLS LAST, b.no_cidadao;
