-- titulo: Vinculados à Equipe sem Visita Domiciliar do ACS desde a Data de Corte
-- categoria: cadastro_e_territorio
-- tabelas: tb_acomp_cidadaos_vinculados, tb_cidadao, tb_dim_cbo, tb_dim_desfecho_visita, tb_fat_cidadao_pec, tb_fat_visita_domiciliar
-- parametros: ine_1, ini
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: visita que chega ao DW com CNS provisório (criado fora do PEC) não liga à pessoa e ela aparece como sem visita

-- Lista para o ACS: pessoas vinculadas à equipe sem visita domiciliar realizada por ACS/TACS desde :ini.
-- psql -v ine_1=... (INE com zeros à esquerda) -v ini=AAAAMMDD (data de corte, ex.: 6 meses atrás)
-- A visita é casada pela pessoa (co_cidadao, CPF ou CNS), não por um único registro do DW (armadilha 13).
-- Saída sem endereço nem telefone; CPF e CNS mascarados.
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
visita AS (               -- última visita realizada por ACS/TACS (qualquer data), por pessoa
    SELECT m.co_cidadao, max(vd.co_dim_tempo) AS ultima
    FROM tb_fat_visita_domiciliar vd JOIN mapa m ON m.id = vd.co_fat_cidadao_pec
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = vd.co_dim_cbo AND c.nu_cbo IN ('515105', '322255')
    JOIN tb_dim_desfecho_visita d ON d.co_seq_dim_desfecho_visita = vd.co_dim_desfecho_visita
         AND lower(d.ds_desfecho_visita) ~ 'realizad'      -- pela descrição: o id muda entre versões
    GROUP BY m.co_cidadao
)
SELECT v.microarea, v.no_cidadao, v.dt_nascimento_cidadao,
       CASE WHEN length(v.cpf) = 11 THEN left(v.cpf, 3) || '.***.***-' || right(v.cpf, 2) END AS cpf_mascarado,
       CASE WHEN length(v.cns) = 15 THEN left(v.cns, 3) || '********' || right(v.cns, 4) END AS cns_mascarado,
       to_date(vi.ultima::text, 'YYYYMMDD') AS ultima_visita
FROM vinc v LEFT JOIN visita vi USING (co_cidadao)
WHERE vi.ultima IS NULL OR vi.ultima < :ini
ORDER BY v.microarea NULLS LAST, v.no_cidadao;
