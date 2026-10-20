-- titulo: Indicador C5: Validação Agregada por Equipe (Hipertensão)
-- categoria: indicadores_cofinanciamento
-- indicador: C5
-- tabelas: tb_acomp_cidadaos_vinculados, tb_dim_cbo, tb_dim_equipe, tb_dim_procedimento, tb_fat_atendimento_individual, tb_fat_cidadao_pec, tb_fat_proced_atend, tb_fat_proced_atend_proced, tb_fat_visita_domiciliar
-- parametros: fim, ine_1, ine_2, ine_3, ini12, ini6
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: não entrega o numerador combinado (A+B+C+D)

-- C5 (hipertensão): as 4 boas práticas por pessoa, a partir do DW do e-SUS PEC. Agregado por equipe (só contagens).
-- psql -v fim=AAAAMMDD (fim da competência) -v ini6=AAAAMMDD (fim - 6 meses) -v ini12=AAAAMMDD (fim - 12 meses)
-- ARMADILHA: no DW a mesma pessoa tem vários registros em tb_fat_cidadao_pec. As fichas CDS (visita do ACS) caem em
-- registros SEM co_cidadao, identificados só pelo CNS (em algumas instalações, a maioria das visitas). Casar a pessoa por
-- co_cidadao OU CPF OU CNS; mesmo assim a prática D pode não fechar (CNS provisório gerado fora do PEC).
WITH vinc AS (            -- vinculados às 3 eSF, com as 3 chaves da pessoa
    SELECT DISTINCT ON (co_cidadao) co_cidadao, nu_ine_vinc_equipe AS ine,
           nullif(regexp_replace(coalesce(nu_cpf_cidadao, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(nu_cns_cidadao, ''), '\D', '', 'g'), '') AS cns
    FROM tb_acomp_cidadaos_vinculados
    WHERE nu_ine_vinc_equipe IN (:'ine_1', :'ine_2', :'ine_3') AND co_cidadao IS NOT NULL
    ORDER BY co_cidadao, nu_ine_vinc_equipe
),
mapa AS (                 -- registro do DW (co_fat_cidadao_pec) → pessoa vinculada
    SELECT f.co_seq_fat_cidadao_pec AS id, v.co_cidadao
    FROM tb_fat_cidadao_pec f JOIN vinc v ON f.co_cidadao = v.co_cidadao
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cns IS NOT NULL AND f.nu_cns = v.cns
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cpf IS NOT NULL AND f.nu_cpf_cidadao = v.cpf
),
atd_has AS (              -- hipertensão avaliada em atendimento de médico/enfermeiro (nota C5, item 5): CID I10-I15,
                          -- O10, O11; CIAP K86, K87; ABP005. Autorrelato da FCI não basta.
    SELECT DISTINCT m.co_cidadao FROM tb_fat_atendimento_individual a JOIN mapa m ON m.id = a.co_fat_cidadao_pec
    JOIN tb_dim_cbo cb ON cb.co_seq_dim_cbo = a.co_dim_cbo_1 AND left(cb.nu_cbo, 4) IN ('2251', '2252', '2253', '2231', '2235')
    WHERE (a.ds_filtro_cids ~ '\|(I1[0-5][0-9]?|O1[01][0-9]?|ABP005)\|' OR a.ds_filtro_ciaps ~ '\|(K86|K87|ABP005)\|')
),
den AS (
    SELECT v.co_cidadao, v.ine FROM vinc v WHERE v.co_cidadao IN (SELECT co_cidadao FROM atd_has)
),
pa AS (                   -- (A) consulta médico/enfermeiro em 6 meses, profissional lotado em eSF
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
pd AS (                   -- (D) 2+ visitas ACS/TACS realizadas, 30+ dias entre a 1ª e a última, em 12 meses
    SELECT m.co_cidadao FROM tb_fat_visita_domiciliar v JOIN mapa m ON m.id = v.co_fat_cidadao_pec
    JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = v.co_dim_cbo
    WHERE v.co_dim_tempo BETWEEN :ini12 AND :fim AND c.nu_cbo IN ('515105', '322255') AND v.co_dim_desfecho_visita = 1
    GROUP BY 1
    HAVING max(to_date(v.co_dim_tempo::text, 'YYYYMMDD')) - min(to_date(v.co_dim_tempo::text, 'YYYYMMDD')) >= 30
)
SELECT d.ine, count(*) AS den,
       count(*) FILTER (WHERE d.co_cidadao IN (SELECT co_cidadao FROM pa)) AS a,
       count(*) FILTER (WHERE d.co_cidadao IN (SELECT co_cidadao FROM pb)) AS b,
       count(*) FILTER (WHERE d.co_cidadao IN (SELECT co_cidadao FROM pc)) AS c,
       count(*) FILTER (WHERE d.co_cidadao IN (SELECT co_cidadao FROM pd)) AS d
FROM den d GROUP BY ROLLUP (d.ine) ORDER BY d.ine NULLS LAST;
