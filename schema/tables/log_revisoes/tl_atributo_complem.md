# tl_atributo_complem

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_atributo_complem` | `bigint` | sim | PK |
| 4 | `no_atributo_complem` | `character varying(255)` | não |  |
| 5 | `dt_competencia` | `character varying(6)` | não |  |
| 6 | `nu_ms` | `character varying(3)` | não |  |
