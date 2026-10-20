# tl_forma_farmaceutica

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_forma_farmaceutica` | `bigint` | sim | PK |
| 4 | `no_forma_farmaceutica` | `character varying(255)` | não |  |
| 5 | `no_forma_farmaceutica_filtro` | `character varying(255)` | não |  |
| 6 | `st_ativo` | `integer` | não |  |
