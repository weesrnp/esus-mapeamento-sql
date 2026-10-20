# tl_tipo_localidade

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_tipo_localidade` | `bigint` | sim | PK |
| 4 | `no_tipo_localidade` | `character varying(100)` | não |  |
| 5 | `sg_tipo_localidade` | `character varying(1)` | não |  |
| 6 | `no_identificador` | `character varying(30)` | não |  |
