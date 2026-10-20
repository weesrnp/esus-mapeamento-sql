# tl_pre_natal

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_pre_natal` | `bigint` | sim | PK |
| 4 | `co_problema` | `bigint` | não |  |
| 5 | `co_prontuario` | `bigint` | não |  |
| 6 | `tp_gravidez` | `bigint` | não |  |
| 7 | `dt_ultima_menstruacao` | `timestamp with time zone` | não |  |
| 8 | `dt_desfecho` | `timestamp with time zone` | não |  |
| 9 | `st_gravidez_planejada` | `integer` | não |  |
| 10 | `st_alto_risco` | `integer` | não |  |
| 11 | `co_unico_pre_natal` | `bigint` | não |  |
