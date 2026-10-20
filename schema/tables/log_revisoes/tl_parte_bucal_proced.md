# tl_parte_bucal_proced

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_parte_bucal_proced` | `bigint` | sim | PK |
| 4 | `co_proced` | `bigint` | não |  |
| 5 | `tp_parte_bucal` | `bigint` | não |  |
| 6 | `nu_dente` | `integer` | não |  |
