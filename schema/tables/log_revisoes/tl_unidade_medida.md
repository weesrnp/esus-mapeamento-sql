# tl_unidade_medida

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_unidade_medida` | `bigint` | sim | PK |
| 4 | `sg_unidade_medida` | `character varying(25)` | não |  |
| 5 | `no_unidade_medida_filtro` | `character varying(100)` | não |  |
| 6 | `no_unidade_medida` | `character varying(100)` | não |  |
| 7 | `no_unidade_medida_plural` | `character varying(100)` | não |  |
