# tl_dente

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_parte_bucal` | `bigint` | sim | PK |
| 4 | `co_sextante` | `bigint` | não |  |
| 5 | `nu_dente` | `integer` | não |  |
