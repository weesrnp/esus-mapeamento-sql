# tl_titulo_patente

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_titulo_patente` | `bigint` | sim | PK |
| 4 | `nu_dne` | `character varying(4)` | não |  |
| 5 | `no_titulo_patente` | `character varying(72)` | não |  |
