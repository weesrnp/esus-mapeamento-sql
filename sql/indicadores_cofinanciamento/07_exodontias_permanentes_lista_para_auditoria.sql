-- titulo: Exodontias de Dentes Permanentes: Lista para Auditoria do B3
-- categoria: indicadores_cofinanciamento
-- indicador: B3
-- tabelas: tb_dim_cbo, tb_dim_equipe, tb_dim_procedimento, tb_fat_atend_odonto_proced, tb_fat_cidadao_pec
-- parametros: fim, ini
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: mostra o registro como chegou ao DW; CPF e CNS saem mascarados e o nome não sai

-- Cada exodontia de dente permanente (numerador do B3) com data, equipe, CBO e código, para conferir lançamento
-- errado (decíduo lançado como permanente, procedimento em duplicidade, CBO de TSB). Sem nome do cidadão.
-- psql -v ini=AAAAMMDD -v fim=AAAAMMDD
SELECT to_date(p.co_dim_tempo::text, 'YYYYMMDD') AS dia, e.nu_ine AS ine, c.nu_cbo, d.co_proced, d.ds_proced,
       coalesce(p.qt_procedimentos, 1) AS qt, p.co_fat_atd_odnt AS id_atendimento,
       CASE WHEN length(f.nu_cpf_cidadao) = 11 THEN left(f.nu_cpf_cidadao, 3) || '.***.***-' || right(f.nu_cpf_cidadao, 2) END AS cpf_mascarado,
       CASE WHEN length(f.nu_cns) = 15 THEN left(f.nu_cns, 3) || '********' || right(f.nu_cns, 4) END AS cns_mascarado
FROM tb_fat_atend_odonto_proced p
JOIN tb_dim_procedimento d ON d.co_seq_dim_procedimento = p.co_dim_procedimento
JOIN tb_dim_cbo c ON c.co_seq_dim_cbo = p.co_dim_cbo_1
LEFT JOIN tb_dim_equipe e ON e.co_seq_dim_equipe = p.co_dim_equipe_1
LEFT JOIN tb_fat_cidadao_pec f ON f.co_seq_fat_cidadao_pec = p.co_fat_cidadao_pec
WHERE p.co_dim_tempo BETWEEN :ini AND :fim
  AND regexp_replace(upper(d.co_proced), '[^0-9A-Z]', '', 'g') IN ('0414020138', '0414020146')
ORDER BY dia, ine;
