-- titulo: Duplicidades de CPF no Cadastro de Cidadãos
-- categoria: cadastro_e_territorio
-- tabelas: tb_cidadao
-- parametros: -
-- uso: somente leitura (SET default_transaction_read_only = on)
-- limitacoes: só CPF; duplicidade por CNS ou por nome e nascimento fica de fora

-- CPF repetido em mais de um cadastro ativo de tb_cidadao. Sai o CPF mascarado, quantos cadastros e os ids internos
-- (co_seq_cidadao) para localizar e unificar no PEC; sem nomes. "mesmo_nascimento" indica se os cadastros têm a mesma
-- data de nascimento (provável mesma pessoa) ou não (CPF digitado errado em um deles).
SELECT left(cpf, 3) || '.***.***-' || right(cpf, 2) AS cpf_mascarado,
       count(*) AS cadastros,
       count(DISTINCT dt_nascimento) = 1 AS mesmo_nascimento,
       array_agg(co_seq_cidadao ORDER BY co_seq_cidadao) AS ids_cidadao
FROM (
    SELECT co_seq_cidadao, dt_nascimento, regexp_replace(nu_cpf, '\D', '', 'g') AS cpf
    FROM tb_cidadao
    WHERE nu_cpf IS NOT NULL AND coalesce(st_ativo, 1) = 1 AND coalesce(st_faleceu, 0) = 0
) c
WHERE length(cpf) = 11
GROUP BY cpf
HAVING count(*) > 1
ORDER BY cadastros DESC, cpf_mascarado;
