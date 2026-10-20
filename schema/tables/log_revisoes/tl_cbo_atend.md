# tl_cbo_atend

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_cbo` | `bigint` | não |  |
| 4 | `qt_tempo_consulta` | `integer` | não |  |
| 5 | `co_localidade` | `bigint` | não |  |
| 6 | `co_seq_cbo_atend` | `bigint` | sim | PK |
| 7 | `st_disponivel_lotacao` | `integer` | não |  |
