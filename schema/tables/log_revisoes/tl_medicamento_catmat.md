# tl_medicamento_catmat

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_medicamento_catmat` | `bigint` | sim | PK |
| 4 | `st_ativo` | `integer` | não |  |
| 5 | `co_principio_ativo` | `bigint` | não |  |
| 6 | `co_unidade_fornecimento` | `bigint` | não |  |
| 7 | `co_catmat` | `character varying(20)` | não |  |
| 8 | `ds_volume` | `character varying(100)` | não |  |
| 9 | `co_medicamento` | `bigint` | não |  |
| 10 | `nu_frequencia_instalacao` | `integer` | não |  |
| 11 | `co_rename` | `character varying(28)` | não |  |
| 12 | `no_medicamento_filtro` | `character varying(600)` | não |  |
