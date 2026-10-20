# tl_atend_proced

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_atend_proced` | `bigint` | sim | PK |
| 4 | `st_obrigatorio` | `integer` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_proced` | `bigint` | não |  |
| 7 | `co_cid10_principal` | `bigint` | não |  |
| 8 | `st_automatico` | `integer` | não |  |
