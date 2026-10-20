-- titulo: Crianças de 16 a 30 Meses Vinculadas à Equipe para Rastreamento M-CHAT-R/F
-- categoria: busca_ativa
-- tabelas: tb_acomp_cidadaos_vinculados, tb_cidadao, tb_dim_cbo, tb_fat_atendimento_individual, tb_fat_cidadao_pec
-- parametros: fim, ine_1
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: o DW não guarda a aplicação do M-CHAT; a lista mostra só a última consulta de médico ou enfermeiro

-- Coorte da equipe para o M-CHAT-R/F (aplicado entre 16 e 30 meses): uma linha por criança, com a última consulta de
-- médico ou enfermeiro (CBO 2251, 2252, 2253, 2231, 2235). Sem nome da mãe, telefone ou endereço; CPF e CNS mascarados.
-- psql -v ine_1=... (INE com zeros à esquerda) -v fim=AAAAMMDD (data de referência da idade)
WITH vinc AS (
    SELECT DISTINCT ON (v.co_cidadao) v.co_cidadao, v.no_cidadao, v.dt_nascimento_cidadao AS nasc,
           coalesce(v.nu_micro_area_domicilio, v.nu_micro_area_tb_cidadao) AS microarea,
           nullif(regexp_replace(coalesce(v.nu_cpf_cidadao, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(v.nu_cns_cidadao, ''), '\D', '', 'g'), '') AS cns
    FROM tb_acomp_cidadaos_vinculados v
    JOIN tb_cidadao c ON c.co_seq_cidadao = v.co_cidadao AND coalesce(c.st_faleceu, 0) = 0
    WHERE v.nu_ine_vinc_equipe = :'ine_1'
      AND v.dt_nascimento_cidadao >  to_date(:'fim', 'YYYYMMDD') - interval '31 months'
      AND v.dt_nascimento_cidadao <= to_date(:'fim', 'YYYYMMDD') - interval '16 months'
    ORDER BY v.co_cidadao, v.dt_ultima_atualizacao_cidadao DESC NULLS LAST
),
mapa AS (
    SELECT f.co_seq_fat_cidadao_pec AS id, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON f.co_cidadao = v.co_cidadao
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cns IS NOT NULL AND f.nu_cns = v.cns
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cpf IS NOT NULL AND f.nu_cpf_cidadao = v.cpf
),
consulta AS (
    SELECT m.co_cidadao, max(a.co_dim_tempo) AS ultima
    FROM tb_fat_atendimento_individual a JOIN mapa m ON m.id = a.co_fat_cidadao_pec
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = a.co_dim_cbo_1 AND left(c.nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235')
    WHERE a.co_dim_tempo <= :fim
    GROUP BY m.co_cidadao
)
SELECT v.microarea, v.no_cidadao, v.nasc AS dt_nascimento,
       (date_part('year', age(to_date(:'fim', 'YYYYMMDD'), v.nasc)) * 12
        + date_part('month', age(to_date(:'fim', 'YYYYMMDD'), v.nasc)))::int AS idade_meses,
       CASE WHEN length(v.cpf) = 11 THEN left(v.cpf, 3) || '.***.***-' || right(v.cpf, 2) END AS cpf_mascarado,
       CASE WHEN length(v.cns) = 15 THEN left(v.cns, 3) || '********' || right(v.cns, 4) END AS cns_mascarado,
       to_date(c.ultima::text, 'YYYYMMDD') AS ultima_consulta_medico_enfermeiro
FROM vinc v LEFT JOIN consulta c USING (co_cidadao)
ORDER BY idade_meses DESC, v.no_cidadao;
