# tl_ad_tipo_inelegivel

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_ad_tipo_inelegivel` | `bigint` | sim | PK |
| 4 | `no_ad_tipo_inelegivel` | `character varying(150)` | não |  |
| 5 | `no_identificador` | `character varying(150)` | não |  |
