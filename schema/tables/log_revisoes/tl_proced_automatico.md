# tl_proced_automatico

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_proced_automatico` | `bigint` | sim | PK |
| 2 | `co_proced` | `bigint` | não |  |
| 3 | `co_cbo` | `bigint` | não |  |
| 4 | `st_consulta_agendada` | `integer` | não |  |
| 5 | `st_atend_odonto` | `integer` | não |  |
| 6 | `co_revisao` | `bigint` | sim | PK |
| 7 | `co_tipo_revisao` | `integer` | não |  |
