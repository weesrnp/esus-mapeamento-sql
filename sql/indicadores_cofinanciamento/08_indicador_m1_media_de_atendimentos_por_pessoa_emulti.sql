-- titulo: Indicador M1: Média de Atendimentos por Pessoa pela eMulti
-- categoria: indicadores_cofinanciamento
-- indicador: M1
-- tabelas: tb_dim_cbo, tb_dim_equipe, tb_dim_tipo_atividade, tb_fat_atendimento_individual, tb_fat_atividade_coletiva, tb_fat_atvdd_coletiva_part, tb_fat_cidadao_pec
-- parametros: fim, ine_1, ini
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: não confere homologação da eMulti (tipo 72) nem CNS do profissional; participante sem CPF/CNS fica de fora; vigência 12/2025 dos novos CBOs fixa no código

-- M1 (NT 43/2026): numerador = atendimentos individuais + participações em atividade coletiva (tipos 04 a 07) da eMulti;
-- denominador = pessoas únicas (CPF ou CNS) com pelo menos um desses registros. Parâmetro: Ótimo > 3; Bom > 2 e <= 3;
-- Suficiente > 1 e <= 2; Regular <= 1.
-- psql -v ini=AAAAMMDD -v fim=AAAAMMDD (últimos 4 meses) -v ine_1=...  (INE da eMulti, com zeros à esquerda)
-- Paliativista (225125, como está na NT 43/2026) e os quatro CBOs de enfermagem só contam a partir de 12/2025 (vigência
-- da nota, armadilha 11).
-- Pessoa única: o mesmo cidadão pode ter vários registros no DW; a chave é co_cidadao, depois CPF, depois CNS.
WITH cbo AS (
    SELECT co_seq_dim_cbo AS id, nu_cbo IN ('225125', '223505', '223580', '223545', '223555') AS desde_2025_12
    FROM tb_dim_cbo
    WHERE nu_cbo IN ('515305', '251605', '223445', '223405', '223605', '223810', '225105', '225120', '225125', '225135',
                     '225155', '225180', '225250', '225140', '225195', '225103', '225124', '225133', '223305', '223505',
                     '223580', '223545', '223555', '223710', '224140', '251510', '131225', '223905')
),
acao AS (
    SELECT a.co_fat_cidadao_pec AS id_dw, a.nu_cpf_cidadao::text AS cpf, a.nu_cns::text AS cns
    FROM tb_fat_atendimento_individual a
    JOIN cbo c ON c.id = a.co_dim_cbo_1 AND (NOT c.desde_2025_12 OR a.co_dim_tempo >= 20251201)
    JOIN tb_dim_equipe e ON e.co_seq_dim_equipe = a.co_dim_equipe_1 AND e.nu_ine = :'ine_1'
    WHERE a.co_dim_tempo BETWEEN :ini AND :fim
    UNION ALL
    SELECT p.co_fat_cidadao_pec, p.nu_cpf_participante, p.nu_participante_cns::text
    FROM tb_fat_atvdd_coletiva_part p
    JOIN tb_fat_atividade_coletiva ac ON ac.co_seq_fat_atividade_coletiva = p.co_fat_atividade_coletiva
    JOIN tb_dim_tipo_atividade t ON t.co_seq_dim_tipo_atividade = ac.co_dim_tipo_atividade
         AND ltrim(t.nu_identificador, '0') IN ('4', '5', '6', '7')
    JOIN cbo c ON c.id = ac.co_dim_cbo AND (NOT c.desde_2025_12 OR ac.co_dim_tempo >= 20251201)
    JOIN tb_dim_equipe e ON e.co_seq_dim_equipe = ac.co_dim_equipe AND e.nu_ine = :'ine_1'
    WHERE ac.co_dim_tempo BETWEEN :ini AND :fim
),
ident AS (                -- CPF/CNS do registro do DW quando a ação não traz
    SELECT nullif(regexp_replace(coalesce(nullif(trim(x.cpf), ''), f.nu_cpf_cidadao, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(nullif(trim(x.cns), ''), f.nu_cns, ''), '\D', '', 'g'), '') AS cns, f.co_cidadao
    FROM acao x LEFT JOIN tb_fat_cidadao_pec f ON f.co_seq_fat_cidadao_pec = x.id_dw
),
cpf_map AS (              -- CPF/CNS soltos → co_cidadao de outro registro da mesma pessoa
    SELECT nu_cpf_cidadao AS cpf, min(co_cidadao) AS co_cidadao FROM tb_fat_cidadao_pec
    WHERE co_cidadao IS NOT NULL AND nu_cpf_cidadao IN (SELECT cpf FROM ident WHERE co_cidadao IS NULL) GROUP BY 1
),
cns_map AS (
    SELECT nu_cns AS cns, min(co_cidadao) AS co_cidadao FROM tb_fat_cidadao_pec
    WHERE co_cidadao IS NOT NULL AND nu_cns IN (SELECT cns FROM ident WHERE co_cidadao IS NULL) GROUP BY 1
),
pessoa AS (
    SELECT coalesce('c' || coalesce(i.co_cidadao, p.co_cidadao, n.co_cidadao), 'p' || i.cpf, 'n' || i.cns) AS chave
    FROM ident i
    LEFT JOIN cpf_map p ON i.co_cidadao IS NULL AND p.cpf = i.cpf
    LEFT JOIN cns_map n ON i.co_cidadao IS NULL AND n.cns = i.cns
)
SELECT count(*) AS atendimentos, count(DISTINCT chave) AS pessoas,
       round(count(*)::numeric / nullif(count(DISTINCT chave), 0), 2) AS media_m1,
       CASE WHEN count(*)::numeric / nullif(count(DISTINCT chave), 0) > 3 THEN 'Ótimo'
            WHEN count(*)::numeric / nullif(count(DISTINCT chave), 0) > 2 THEN 'Bom'
            WHEN count(*)::numeric / nullif(count(DISTINCT chave), 0) > 1 THEN 'Suficiente'
            ELSE 'Regular' END AS classificacao
FROM pessoa WHERE chave IS NOT NULL;
