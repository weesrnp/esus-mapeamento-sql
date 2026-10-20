# tl_tipo_perfil

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_perfil` | `bigint` | sim | PK |
| 2 | `no_tipo_perfil` | `character varying(100)` | não |  |
| 3 | `co_revisao` | `bigint` | sim | PK |
| 4 | `co_tipo_revisao` | `integer` | não |  |
