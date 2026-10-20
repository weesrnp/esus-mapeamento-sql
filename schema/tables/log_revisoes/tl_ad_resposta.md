# tl_ad_resposta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ad_resposta` | `bigint` | sim | PK |
| 2 | `co_unico_ad_questao` | `bigint` | não |  |
| 3 | `st_ad_resposta` | `bigint` | não |  |
| 4 | `co_revisao` | `bigint` | sim | PK |
| 5 | `co_tipo_revisao` | `integer` | não |  |
| 6 | `co_atend_prof_ad` | `bigint` | não |  |
