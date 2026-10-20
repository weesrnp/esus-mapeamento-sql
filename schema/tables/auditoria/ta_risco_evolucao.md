# ta_risco_evolucao

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tariscoevolucao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_risco_evolucao` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `st_ativo` | `integer` | não |  |
| 7 | `st_evolucao_automatica` | `integer` | não |  |
| 8 | `co_unico_risco` | `bigint` | não |  |
