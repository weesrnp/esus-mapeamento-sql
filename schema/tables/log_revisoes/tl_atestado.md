# tl_atestado

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_atestado` | `bigint` | sim | PK |
| 4 | `dt_atestado` | `timestamp without time zone` | não |  |
| 5 | `ds_atestado` | `text` | não |  |
| 6 | `st_impresso` | `integer` | não |  |
| 7 | `co_atend_prof` | `bigint` | não |  |
| 8 | `co_prontuario` | `bigint` | não |  |
