# ta_odontograma

Tipo: tabela  
Grupo: auditoria  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taodontograma` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_odontograma` | `bigint` | não |  |
| 5 | `co_atend_prof_odonto` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `st_protese_total_superior` | `integer` | não |  |
| 8 | `st_protese_total_inferior` | `integer` | não |  |
| 9 | `st_contencao` | `integer` | não |  |
| 10 | `st_aparelho` | `integer` | não |  |
