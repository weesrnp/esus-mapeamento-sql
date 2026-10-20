# ta_atend_prof_pre_natal

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatendprofprenatal` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_atend_prof_pre_natal` | `bigint` | não |  |
| 5 | `co_unico_pre_natal` | `bigint` | não |  |
| 6 | `tp_edema` | `bigint` | não |  |
| 7 | `st_gravidez_planejada` | `integer` | não |  |
| 8 | `st_movimentacao_fetal` | `integer` | não |  |
