# tl_problema_evolucao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_problema_evolucao` | `bigint` | sim | PK |
| 4 | `ds_observacao` | `character varying(255)` | não |  |
| 5 | `co_situacao_problema` | `bigint` | não |  |
| 6 | `co_atend_prof` | `bigint` | não |  |
| 7 | `co_unico_problema` | `bigint` | não |  |
| 8 | `co_mes_inicio` | `bigint` | não |  |
| 9 | `co_mes_fim` | `bigint` | não |  |
| 10 | `qt_mes_inicio` | `integer` | não |  |
| 11 | `qt_mes_fim` | `integer` | não |  |
| 12 | `qt_ano_inicio` | `integer` | não |  |
| 13 | `qt_ano_fim` | `integer` | não |  |
| 14 | `nu_dia_inicio` | `integer` | não |  |
| 15 | `nu_dia_fim` | `integer` | não |  |
| 16 | `nu_ano_inicio` | `integer` | não |  |
| 17 | `nu_ano_fim` | `integer` | não |  |
