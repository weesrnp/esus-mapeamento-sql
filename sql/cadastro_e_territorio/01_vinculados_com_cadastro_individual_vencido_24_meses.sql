-- titulo: Vinculados com Cadastro Individual (MICI) Vencido: 24 Meses sem Atualização
-- categoria: cadastro_e_territorio
-- tabelas: tb_acomp_cidadaos_vinculados, tb_cidadao, tb_dim_tipo_saida_cadastro, tb_fat_cad_individual, tb_fat_cidadao_pec
-- parametros: fim, ine_1
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: olha a ficha que chegou ao DW, não a validação no SISAB; quem saiu do território (última ficha com saída) não aparece

-- Lista para atualizar o cadastro: pessoa vinculada à equipe cuja última ficha de cadastro individual tem mais de 24 meses
-- no fim do período (ou que nunca teve FCI). Cadastro vencido deixa de pontuar na dimensão Cadastro do vínculo.
-- psql -v ine_1=... (INE com zeros à esquerda) -v fim=AAAAMMDD
-- Última ficha primeiro, saída e inativação depois (armadilha 5): filtrar antes faz uma ficha antiga reaparecer.
WITH vinc AS (
    SELECT DISTINCT ON (co_cidadao) co_cidadao, no_cidadao, dt_nascimento_cidadao,
           coalesce(nu_micro_area_domicilio, nu_micro_area_tb_cidadao) AS microarea,
           nullif(regexp_replace(coalesce(nu_cpf_cidadao, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(nu_cns_cidadao, ''), '\D', '', 'g'), '') AS cns
    FROM tb_acomp_cidadaos_vinculados
    WHERE nu_ine_vinc_equipe = :'ine_1' AND co_cidadao IS NOT NULL
     AND co_cidadao NOT IN (SELECT co_seq_cidadao FROM tb_cidadao WHERE st_faleceu = 1)
    ORDER BY co_cidadao, dt_ultima_atualizacao_cidadao DESC NULLS LAST
),
mapa AS (
    SELECT f.co_seq_fat_cidadao_pec AS id, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON f.co_cidadao = v.co_cidadao
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cns IS NOT NULL AND f.nu_cns = v.cns
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cpf IS NOT NULL AND f.nu_cpf_cidadao = v.cpf
),
ultima AS (
    SELECT DISTINCT ON (m.co_cidadao) m.co_cidadao, f.co_dim_tempo, f.st_ficha_inativa,
           lower(coalesce(s.ds_dim_tipo_saida_cadastro, '')) AS saida
    FROM tb_fat_cad_individual f JOIN mapa m ON m.id = f.co_fat_cidadao_pec
    LEFT JOIN tb_dim_tipo_saida_cadastro s ON s.co_seq_dim_tipo_saida_cadastro = f.co_dim_tipo_saida_cadastro
    WHERE f.co_dim_tempo <= :fim
    ORDER BY m.co_cidadao, f.co_dim_tempo DESC, f.co_seq_fat_cad_individual DESC
)
SELECT v.microarea, v.no_cidadao, v.dt_nascimento_cidadao,
       CASE WHEN length(v.cpf) = 11 THEN left(v.cpf, 3) || '.***.***-' || right(v.cpf, 2) END AS cpf_mascarado,
       CASE WHEN length(v.cns) = 15 THEN left(v.cns, 3) || '********' || right(v.cns, 4) END AS cns_mascarado,
       to_date(u.co_dim_tempo::text, 'YYYYMMDD') AS ultima_fci,
       (to_date(:'fim', 'YYYYMMDD') - to_date(u.co_dim_tempo::text, 'YYYYMMDD')) / 30 AS meses_aprox,
       coalesce(u.st_ficha_inativa, 0) = 1 AS ficha_inativa
FROM vinc v LEFT JOIN ultima u USING (co_cidadao)
WHERE coalesce(u.saida, '') !~ '(bito|mudan)'
  AND (u.co_dim_tempo IS NULL OR coalesce(u.st_ficha_inativa, 0) = 1
       OR u.co_dim_tempo <= to_char(to_date(:'fim', 'YYYYMMDD') - interval '24 months', 'YYYYMMDD')::bigint)
ORDER BY v.microarea NULLS LAST, u.co_dim_tempo NULLS FIRST, v.no_cidadao;
