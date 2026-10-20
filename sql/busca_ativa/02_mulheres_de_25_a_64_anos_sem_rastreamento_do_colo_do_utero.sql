-- titulo: Mulheres e Homens Trans de 25 a 64 Anos sem Rastreamento do Câncer do Colo do Útero (C7, Prática A)
-- categoria: busca_ativa
-- indicador: C7
-- tabelas: tb_acomp_cidadaos_vinculados, tb_cidadao, tb_dim_procedimento, tb_fat_atd_ind_procedimentos, tb_fat_atendimento_individual, tb_fat_cidadao_pec, tb_fat_proced_atend_proced
-- parametros: fim, ine_1
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: sexo e identidade de gênero lidos pelo texto da visão de vínculo; não confere CBO de quem registrou o exame

-- Lista nominal da prática A do C7 (nota metodológica C7): pessoa vinculada de 25 a 64 anos no fim do período, de sexo
-- feminino ou homem transgênero, sem citopatológico coletado, solicitado ou avaliado em 36 meses (exame molecular de
-- HPV 0202100251 vale por 60 meses; a coleta para HPV fica nos 36, como na nota). Pessoa com sexo feminino e identidade "mulher transgênero" fica fora, como na nota.
-- psql -v ine_1=... (INE com zeros à esquerda) -v fim=AAAAMMDD
-- Códigos: 0201020033 coleta; 0203010086 e 0203010019 exame; 0201020076 e 0201020084 coleta para HPV; ABEX001;
-- ABPG010 (código da ficha); ABP022 (rastreamento do colo, como problema avaliado).
WITH lim AS (
    SELECT to_char(to_date(:'fim', 'YYYYMMDD') - interval '36 months', 'YYYYMMDD')::bigint AS ini36,
           to_char(to_date(:'fim', 'YYYYMMDD') - interval '60 months', 'YYYYMMDD')::bigint AS ini60
),
vinc AS (
    SELECT DISTINCT ON (v.co_cidadao) v.co_cidadao, v.no_cidadao, v.dt_nascimento_cidadao AS nasc,
           coalesce(v.nu_micro_area_domicilio, v.nu_micro_area_tb_cidadao) AS microarea,
           nullif(regexp_replace(coalesce(v.nu_cpf_cidadao, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(v.nu_cns_cidadao, ''), '\D', '', 'g'), '') AS cns
    FROM tb_acomp_cidadaos_vinculados v
    JOIN tb_cidadao c ON c.co_seq_cidadao = v.co_cidadao AND coalesce(c.st_faleceu, 0) = 0
    WHERE v.nu_ine_vinc_equipe = :'ine_1'
      AND date_part('year', age(to_date(:'fim', 'YYYYMMDD'), v.dt_nascimento_cidadao)) BETWEEN 25 AND 64
      AND (   (lower(v.no_sexo_cidadao) LIKE 'f%' AND coalesce(lower(v.tp_identidade_genero_cidadao), '') !~ 'mulher.*trans')
           OR (lower(v.no_sexo_cidadao) LIKE 'm%' AND lower(v.tp_identidade_genero_cidadao) ~ 'homem.*trans'))
    ORDER BY v.co_cidadao, v.dt_ultima_atualizacao_cidadao DESC NULLS LAST
),
mapa AS (
    SELECT f.co_seq_fat_cidadao_pec AS id, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON f.co_cidadao = v.co_cidadao
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cns IS NOT NULL AND f.nu_cns = v.cns
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cpf IS NOT NULL AND f.nu_cpf_cidadao = v.cpf
),
exame AS (                -- procedimento em atendimento individual (avaliado ou solicitado) e em ficha de procedimentos
    SELECT m.co_cidadao, p.co_dim_tempo, d.co_proced
    FROM tb_fat_atd_ind_procedimentos p
    JOIN mapa m ON m.id = p.co_fat_cidadao_pec
    JOIN tb_dim_procedimento d
      ON d.co_seq_dim_procedimento IN (p.co_dim_procedimento_avaliado, p.co_dim_procedimento_solicitado)
    CROSS JOIN lim
    WHERE p.co_dim_tempo > lim.ini60 AND p.co_dim_tempo <= :fim
    UNION ALL
    SELECT m.co_cidadao, p.co_dim_tempo, d.co_proced
    FROM tb_fat_proced_atend_proced p
    JOIN mapa m ON m.id = p.co_fat_cidadao_pec
    JOIN tb_dim_procedimento d ON d.co_seq_dim_procedimento = p.co_dim_procedimento
    CROSS JOIN lim
    WHERE p.co_dim_tempo > lim.ini60 AND p.co_dim_tempo <= :fim
    UNION ALL
    SELECT m.co_cidadao, a.co_dim_tempo, 'ABP022'::text
    FROM tb_fat_atendimento_individual a
    JOIN mapa m ON m.id = a.co_fat_cidadao_pec
    CROSS JOIN lim
    WHERE a.co_dim_tempo > lim.ini36 AND a.co_dim_tempo <= :fim AND a.ds_filtro_ciaps ~ '\|ABP022\|'
),
feito AS (
    SELECT DISTINCT e.co_cidadao
    FROM exame e CROSS JOIN lim
    WHERE (e.co_proced IN ('0201020033', '0203010086', '0203010019', '0201020076', '0201020084', 'ABEX001', 'ABPG010', 'ABP022')
           AND e.co_dim_tempo > lim.ini36)
       OR e.co_proced = '0202100251'
)
SELECT v.microarea, v.no_cidadao, v.nasc AS dt_nascimento,
       date_part('year', age(to_date(:'fim', 'YYYYMMDD'), v.nasc))::int AS idade,
       CASE WHEN length(v.cpf) = 11 THEN left(v.cpf, 3) || '.***.***-' || right(v.cpf, 2) END AS cpf_mascarado,
       CASE WHEN length(v.cns) = 15 THEN left(v.cns, 3) || '********' || right(v.cns, 4) END AS cns_mascarado
FROM vinc v
WHERE NOT EXISTS (SELECT 1 FROM feito f WHERE f.co_cidadao = v.co_cidadao)
ORDER BY v.microarea NULLS LAST, v.no_cidadao;
