# tl_odontograma

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_odontograma` | `bigint` | sim | PK |
| 4 | `co_atend_prof_odonto` | `bigint` | não |  |
| 5 | `co_prontuario` | `bigint` | não |  |
| 6 | `st_protese_total_superior` | `integer` | não |  |
| 7 | `st_protese_total_inferior` | `integer` | não |  |
