# ta_atend_obs_responsavel

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatendobsresponsavel` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_atend_obs_responsavel` | `bigint` | não |  |
| 5 | `co_atend_obs` | `bigint` | não |  |
| 6 | `co_responsavel` | `bigint` | não |  |
| 7 | `st_atendeu_responsavel` | `integer` | não |  |
