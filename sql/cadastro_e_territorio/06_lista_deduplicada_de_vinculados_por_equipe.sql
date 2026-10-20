-- titulo: Lista Deduplicada de Vinculados por Equipe (Padrão para Busca Ativa)
-- categoria: cadastro_e_territorio
-- tabelas: tb_acomp_cidadaos_vinculados, tb_cidadao
-- parametros: nu_ine
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: vínculo como está na visão do PEC no momento da consulta; não recalcula a regra de vinculação da Portaria 161/2024

-- Ponto de partida das listas de busca ativa: uma linha por pessoa (DISTINCT ON co_cidadao), da linha mais atualizada
-- da visão de vínculo, sem óbito. Sem endereço nem telefone; CPF e CNS mascarados.
-- psql -v nu_ine=... (INE com zeros à esquerda; com aspas no psql para não perder os zeros)
SELECT microarea, no_cidadao, dt_nascimento_cidadao,
       CASE WHEN length(cpf) = 11 THEN left(cpf, 3) || '.***.***-' || right(cpf, 2) END AS cpf_mascarado,
       CASE WHEN length(cns) = 15 THEN left(cns, 3) || '********' || right(cns, 4) END AS cns_mascarado,
       st_possui_fci, st_possui_fcdt
FROM (
    SELECT DISTINCT ON (v.co_cidadao) v.co_cidadao, v.no_cidadao, v.dt_nascimento_cidadao,
           coalesce(v.nu_micro_area_domicilio, v.nu_micro_area_tb_cidadao) AS microarea,
           nullif(regexp_replace(coalesce(v.nu_cpf_cidadao, ''), '\D', '', 'g'), '') AS cpf,
           nullif(regexp_replace(coalesce(v.nu_cns_cidadao, ''), '\D', '', 'g'), '') AS cns,
           v.st_possui_fci, v.st_possui_fcdt
    FROM tb_acomp_cidadaos_vinculados v
    JOIN tb_cidadao c ON c.co_seq_cidadao = v.co_cidadao AND coalesce(c.st_faleceu, 0) = 0
    WHERE v.nu_ine_vinc_equipe = :'nu_ine'
    ORDER BY v.co_cidadao, v.dt_ultima_atualizacao_cidadao DESC NULLS LAST
) x
ORDER BY microarea NULLS LAST, no_cidadao;
