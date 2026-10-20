# tl_povo_comunidade_tradicional

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_povo_comunidade_tradicional` | `bigint` | sim | PK |
| 4 | `no_povo_comunidade_tradicional` | `character varying(255)` | não |  |
| 5 | `no_povo_comunidade_trad_filtro` | `character varying(255)` | não |  |
