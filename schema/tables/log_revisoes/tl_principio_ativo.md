# tl_principio_ativo

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_principio_ativo` | `bigint` | sim | PK |
| 4 | `st_ativo` | `integer` | não |  |
| 5 | `no_principio_ativo_filtro` | `character varying(200)` | não |  |
| 6 | `no_principio_ativo` | `character varying(200)` | não |  |
| 7 | `co_lista_medicamento` | `bigint` | não |  |
