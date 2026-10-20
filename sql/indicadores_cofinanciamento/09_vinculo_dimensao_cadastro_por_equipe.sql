-- titulo: Vínculo e Acompanhamento: Dimensão Cadastro (X) por Equipe
-- categoria: indicadores_cofinanciamento
-- tabelas: tb_acomp_cidadaos_vinculados, tb_dim_tipo_saida_cadastro, tb_fat_cad_dom_familia, tb_fat_cad_individual, tb_fat_cidadao_pec
-- parametros: fim, ine_1, pessoas_parametro
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: não confere validação no SISAB nem no CadSUS; o domicílio (MICDT) é ligado pelo responsável familiar da FCI

-- Dimensão Cadastro (nota de Vínculo e Acompanhamento; Portaria SAPS 161/2024): pessoa vinculada com MICI atualizado
-- nos 24 meses até o fim do quadrimestre vale 0,75; com MICI e MICDT atualizados vale 1,5.
-- X = soma ponderada / parâmetro da equipe × 100. Escore: X > 85 → 3; 65 a 84,9 → 2,25; 45 a 64,9 → 1,5; < 45 → 0,75.
-- psql -v ine_1=... (INE com zeros à esquerda) -v fim=AAAAMMDD (último dia do quadrimestre) -v pessoas_parametro=N
--   N pelo porte do município e tipo de equipe (Portaria 161/2024, Anexo III): eSF até 20 mil hab. = 2000.
--   Uma equipe por vez, porque o parâmetro muda com o tipo de equipe (eSF, eAP 30h, eAP 20h).
-- Ficha individual: pega a última FCI da pessoa e só depois descarta saída, ficha inativa e recusa (armadilha 5).
WITH lim AS (
    SELECT to_char(to_date(:'fim', 'YYYYMMDD') - interval '24 months', 'YYYYMMDD')::bigint AS ini24
),
vinc AS (
    SELECT DISTINCT ON (co_cidadao) co_cidadao, nu_ine_vinc_equipe AS ine,
           nullif(regexp_replace(coalesce(nu_cpf_cidadao, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(nu_cns_cidadao, ''), '\D', '', 'g'), '') AS cns
    FROM tb_acomp_cidadaos_vinculados
    WHERE nu_ine_vinc_equipe = :'ine_1' AND co_cidadao IS NOT NULL
    ORDER BY co_cidadao, dt_ultima_atualizacao_cidadao DESC NULLS LAST
),
mapa AS (
    SELECT f.co_seq_fat_cidadao_pec AS id, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON f.co_cidadao = v.co_cidadao
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cns IS NOT NULL AND f.nu_cns = v.cns
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cpf IS NOT NULL AND f.nu_cpf_cidadao = v.cpf
),
obito AS (
    SELECT DISTINCT m.co_cidadao FROM tb_fat_cidadao_pec f JOIN mapa m ON m.id = f.co_seq_fat_cidadao_pec WHERE f.st_faleceu = 1
),
ultima_fci AS (
    SELECT DISTINCT ON (m.co_cidadao) m.co_cidadao, f.co_dim_tempo, f.st_ficha_inativa, f.st_recusa_cadastro,
           f.st_responsavel_familiar, f.co_fat_cidadao_pec_responsvl,
           nullif(regexp_replace(coalesce(f.nu_cpf_responsavel, ''), '\D', '', 'g'), '') AS cpf_resp,
           nullif(regexp_replace(coalesce(f.nu_cns_responsavel, ''), '\D', '', 'g'), '') AS cns_resp,
           lower(coalesce(s.ds_dim_tipo_saida_cadastro, '')) AS saida
    FROM tb_fat_cad_individual f JOIN mapa m ON m.id = f.co_fat_cidadao_pec
    LEFT JOIN tb_dim_tipo_saida_cadastro s ON s.co_seq_dim_tipo_saida_cadastro = f.co_dim_tipo_saida_cadastro
    WHERE f.co_dim_tempo <= :fim
    ORDER BY m.co_cidadao, f.co_dim_tempo DESC, f.co_seq_fat_cad_individual DESC
),
mici AS (                 -- MICI vigente: última ficha nos 24 meses, sem saída (óbito/mudança), inativação ou recusa
    SELECT u.* FROM ultima_fci u, lim
    WHERE u.co_dim_tempo > lim.ini24 AND coalesce(u.st_ficha_inativa, 0) = 0 AND coalesce(u.st_recusa_cadastro, 0) = 0
      AND u.saida !~ '(bito|mudan)' AND u.co_cidadao NOT IN (SELECT co_cidadao FROM obito)
),
ultima_dom AS (           -- última ficha de família por responsável até o fim; mudança e recusa olhadas depois (armadilha 5)
    SELECT DISTINCT ON (resp) resp, id_resp, cpf_resp, cns_resp, co_dim_tempo, st_mudou, st_recusa_cadastro
    FROM (
        SELECT coalesce('r' || d.co_fat_cidadao_pec, 'p' || x.cpf_resp, 'n' || x.cns_resp) AS resp,
               d.co_fat_cidadao_pec AS id_resp, x.cpf_resp, x.cns_resp, d.co_dim_tempo, d.st_mudou, d.st_recusa_cadastro,
               d.co_seq_fat_cad_dom_familia
        FROM tb_fat_cad_dom_familia d
        CROSS JOIN LATERAL (
            SELECT nullif(regexp_replace(coalesce(d.nu_cpf_responsavel, ''), '\D', '', 'g'), '') AS cpf_resp,
                   nullif(regexp_replace(coalesce(d.nu_cns_responsavel, ''), '\D', '', 'g'), '') AS cns_resp) x
        WHERE d.co_dim_tempo <= :fim
    ) t
    WHERE resp IS NOT NULL
    ORDER BY resp, co_dim_tempo DESC, co_seq_fat_cad_dom_familia DESC
),
dom AS (                  -- família com ficha domiciliar vigente: última ficha nos 24 meses, sem mudança nem recusa
    SELECT u.id_resp, u.cpf_resp, u.cns_resp
    FROM ultima_dom u CROSS JOIN lim
    WHERE u.co_dim_tempo > lim.ini24 AND coalesce(u.st_mudou, 0) = 0 AND coalesce(u.st_recusa_cadastro, 0) = 0
),
micdt AS (                -- pessoa com MICDT: ela é a responsável ou o responsável dela tem ficha domiciliar vigente
    SELECT x.co_cidadao FROM mici x JOIN mapa m ON m.co_cidadao = x.co_cidadao JOIN dom ON dom.id_resp = m.id
        WHERE x.st_responsavel_familiar = 1
    UNION SELECT x.co_cidadao FROM mici x JOIN dom ON dom.id_resp = x.co_fat_cidadao_pec_responsvl
    UNION SELECT x.co_cidadao FROM mici x JOIN dom ON x.cpf_resp IS NOT NULL AND dom.cpf_resp = x.cpf_resp
    UNION SELECT x.co_cidadao FROM mici x JOIN dom ON x.cns_resp IS NOT NULL AND dom.cns_resp = x.cns_resp
),
pessoa AS (
    SELECT v.ine, (k.co_cidadao IS NOT NULL) AS com_micdt
    FROM mici x JOIN vinc v USING (co_cidadao) LEFT JOIN micdt k USING (co_cidadao)
),
eq AS (
    SELECT ine, count(*) FILTER (WHERE NOT com_micdt) AS so_mici, count(*) FILTER (WHERE com_micdt) AS mici_micdt
    FROM pessoa GROUP BY ine
)
SELECT ine, so_mici, mici_micdt, 0.75 * so_mici + 1.5 * mici_micdt AS soma_ponderada,
       round((0.75 * so_mici + 1.5 * mici_micdt) / :pessoas_parametro * 100, 1) AS x,
       CASE WHEN (0.75 * so_mici + 1.5 * mici_micdt) / :pessoas_parametro * 100 > 85 THEN 3.00
            WHEN (0.75 * so_mici + 1.5 * mici_micdt) / :pessoas_parametro * 100 >= 65 THEN 2.25
            WHEN (0.75 * so_mici + 1.5 * mici_micdt) / :pessoas_parametro * 100 >= 45 THEN 1.50
            ELSE 0.75 END AS escore_cadastro
FROM eq ORDER BY ine;
