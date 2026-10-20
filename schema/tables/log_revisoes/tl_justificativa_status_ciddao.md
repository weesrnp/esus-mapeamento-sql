# tl_justificativa_status_ciddao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_justifica_inativ_cidada` | `bigint` | sim | PK |
| 4 | `dt_justificativa` | `timestamp with time zone` | não |  |
| 5 | `ds_justificativa` | `character varying(1000)` | não |  |
| 6 | `co_lotacao` | `bigint` | não |  |
| 7 | `co_cidadao` | `bigint` | não |  |
| 8 | `st_cidadao` | `integer` | não |  |
| 9 | `co_usuario` | `bigint` | não |  |
