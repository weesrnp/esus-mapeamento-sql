# tl_tipo_gravidez

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_tipo_gravidez` | `bigint` | sim | PK |
| 4 | `no_tipo_gravidez` | `character varying(255)` | não |  |
| 5 | `no_identificador` | `character varying(255)` | não |  |
