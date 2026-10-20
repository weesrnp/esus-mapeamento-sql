# ta_problema_evolucao

Tipo: tabela  
Grupo: auditoria  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taproblemaevolucao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_problema_evolucao` | `bigint` | não |  |
| 5 | `ds_observacao` | `character varying(255)` | não |  |
| 6 | `co_situacao_problema` | `bigint` | não |  |
| 7 | `co_atend_prof` | `bigint` | não |  |
| 8 | `co_unico_problema` | `bigint` | não |  |
| 9 | `dt_inicio_problema` | `date` | não |  |
| 10 | `dt_fim_problema` | `date` | não |  |
| 11 | `st_possui_cid` | `smallint` | não |  |
| 12 | `st_possui_ciap` | `smallint` | não |  |
| 13 | `co_sequencial_evolucao` | `bigint` | não |  |
| 14 | `co_unico_evolucao` | `character varying(44)` | não |  |
| 15 | `st_possui_cid11` | `integer` | não |  |
