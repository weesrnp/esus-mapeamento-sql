# ta_justificativa_status_ciddao

Tipo: tabela  
Grupo: auditoria  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tajustificativastatscdd` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_justifica_inativ_cidada` | `bigint` | não |  |
| 5 | `dt_justificativa` | `timestamp with time zone` | não |  |
| 6 | `ds_justificativa` | `character varying(1000)` | não |  |
| 7 | `co_lotacao` | `bigint` | não |  |
| 8 | `co_cidadao` | `bigint` | não |  |
| 9 | `st_cidadao` | `integer` | não |  |
| 10 | `co_usuario` | `bigint` | não |  |
