# ta_evol_aval_tp_vig_saude_bucl

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taevolavaltpvigsaudebcl` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_evolucao_avaliacao` | `bigint` | não |  |
| 5 | `co_tipo_vig_saude_bucal` | `bigint` | não |  |
