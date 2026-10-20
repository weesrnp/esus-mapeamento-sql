# ta_atend_obs

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatendobs` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_atend_obs` | `bigint` | não |  |
| 5 | `co_atend_prof_iniciador` | `bigint` | não |  |
| 7 | `st_finalizado` | `integer` | não |  |
| 8 | `co_atend_prof_finalizador` | `bigint` | não |  |
