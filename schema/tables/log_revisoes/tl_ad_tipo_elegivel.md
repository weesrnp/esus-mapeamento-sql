# tl_ad_tipo_elegivel

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_ad_tipo_elegivel` | `bigint` | sim | PK |
| 4 | `no_ad_tipo_elegivel` | `character varying(100)` | não |  |
| 5 | `no_identificador` | `character varying(100)` | não |  |
