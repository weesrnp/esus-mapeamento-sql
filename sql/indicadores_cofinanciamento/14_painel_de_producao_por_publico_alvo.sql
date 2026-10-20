-- titulo: Painel de Produção por Público-Alvo (Crianças, Idosos e Adultos de 40 a 74 Anos)
-- categoria: indicadores_cofinanciamento
-- tabelas: tb_acomp_cidadaos_vinculados, tb_cidadao, tb_fat_atendimento_individual, tb_fat_cidadao_pec
-- parametros: fim, ini
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: painel de produção, não é indicador: não aplica o critério das fichas do ProAPS (IVCF-20, estratificação de risco etc.)

-- Pessoas vinculadas por público-alvo e quantas tiveram atendimento individual no período, contando cada pessoa uma vez.
-- Serve de termômetro antes de calcular os indicadores do ProAPS; não reproduz V, VII nem X.
--   menores de 1 ano: qualquer atendimento individual
--   60 anos ou mais: qualquer atendimento individual
--   40 a 74 anos: atendimento com PA ou glicemia registrada
-- psql -v ini=AAAAMMDD -v fim=AAAAMMDD  (idade calculada no último dia do período)
WITH vinc AS (
    SELECT DISTINCT ON (co_cidadao) co_cidadao, dt_nascimento_cidadao AS nasc,
           nullif(regexp_replace(coalesce(nu_cpf_cidadao, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(nu_cns_cidadao, ''), '\D', '', 'g'), '') AS cns
    FROM tb_acomp_cidadaos_vinculados
    WHERE co_cidadao IS NOT NULL AND dt_nascimento_cidadao IS NOT NULL
     AND co_cidadao NOT IN (SELECT co_seq_cidadao FROM tb_cidadao WHERE st_faleceu = 1)
    ORDER BY co_cidadao, nu_ine_vinc_equipe
),
mapa AS (
    SELECT f.co_seq_fat_cidadao_pec AS id, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON f.co_cidadao = v.co_cidadao
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cns IS NOT NULL AND f.nu_cns = v.cns
    UNION SELECT f.co_seq_fat_cidadao_pec, v.co_cidadao FROM tb_fat_cidadao_pec f JOIN vinc v ON v.cpf IS NOT NULL AND f.nu_cpf_cidadao = v.cpf
),
idade AS (
    SELECT co_cidadao, date_part('year', age(to_date(:'fim', 'YYYYMMDD'), nasc)) AS anos
    FROM vinc WHERE nasc <= to_date(:'fim', 'YYYYMMDD')
),
atd AS (                  -- uma linha por pessoa: teve atendimento? teve PA ou glicemia?
    SELECT m.co_cidadao, bool_or(a.nu_pressao_sistolica IS NOT NULL OR a.nu_glicemia IS NOT NULL) AS pa_glicemia
    FROM tb_fat_atendimento_individual a JOIN mapa m ON m.id = a.co_fat_cidadao_pec
    WHERE a.co_dim_tempo BETWEEN :ini AND :fim
    GROUP BY m.co_cidadao
),
publico AS (
    SELECT 'menores de 1 ano'::text AS publico, i.co_cidadao, (a.co_cidadao IS NOT NULL) AS atendido
    FROM idade i LEFT JOIN atd a USING (co_cidadao) WHERE i.anos < 1
    UNION ALL
    SELECT '60 anos ou mais'::text, i.co_cidadao, (a.co_cidadao IS NOT NULL)
    FROM idade i LEFT JOIN atd a USING (co_cidadao) WHERE i.anos >= 60
    UNION ALL
    SELECT '40 a 74 anos com PA ou glicemia'::text, i.co_cidadao, coalesce(a.pa_glicemia, false)
    FROM idade i LEFT JOIN atd a USING (co_cidadao) WHERE i.anos BETWEEN 40 AND 74
)
SELECT publico, count(*) AS pessoas_vinculadas, count(*) FILTER (WHERE atendido) AS pessoas_atendidas,
       round(100.0 * count(*) FILTER (WHERE atendido) / nullif(count(*), 0), 1) AS pct
FROM publico GROUP BY publico ORDER BY publico;
