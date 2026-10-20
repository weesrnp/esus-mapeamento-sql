# tl_unidade_saude_horus

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_unidade_saude` | `bigint` | sim | PK |
| 4 | `co_unidade_saude_horus` | `bigint` | sim | PK |
| 5 | `co_seq_unidade_saude_horus` | `bigint` | sim |  |
