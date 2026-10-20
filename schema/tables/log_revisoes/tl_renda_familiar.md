# tl_renda_familiar

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_renda_familiar` | `bigint` | sim | PK |
| 2 | `no_renda_familiar` | `character varying(255)` | não |  |
| 3 | `co_revisao` | `bigint` | sim | PK |
| 4 | `co_tipo_revisao` | `integer` | não |  |
| 5 | `co_ordem` | `bigint` | não |  |
