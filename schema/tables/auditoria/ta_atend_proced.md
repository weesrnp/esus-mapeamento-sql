# ta_atend_proced

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatendproced` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_atend_proced` | `bigint` | não |  |
| 5 | `st_obrigatorio` | `integer` | não |  |
| 6 | `co_atend_prof` | `bigint` | não |  |
| 7 | `co_proced` | `bigint` | não |  |
| 8 | `co_cid10_principal` | `bigint` | não |  |
| 9 | `st_automatico` | `integer` | não |  |
