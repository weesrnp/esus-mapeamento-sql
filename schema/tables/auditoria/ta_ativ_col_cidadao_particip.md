# ta_ativ_col_cidadao_particip

Tipo: tabela  
Grupo: auditoria  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taativcolcidadaoparticp` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_cidadao_participante` | `bigint` | não |  |
| 5 | `no_nome` | `character varying(255)` | não |  |
| 6 | `dt_nascimento` | `date` | não |  |
| 7 | `co_sexo` | `bigint` | não |  |
| 8 | `nu_cpf` | `character varying(11)` | não |  |
| 9 | `nu_cns` | `character varying(16)` | não |  |
| 10 | `st_nao_possui_cpf` | `integer` | não |  |
| 11 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
