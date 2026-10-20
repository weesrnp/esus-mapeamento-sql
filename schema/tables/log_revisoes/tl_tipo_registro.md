# tl_tipo_registro

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_tipo_registro` | `bigint` | sim | PK |
| 4 | `no_tipo_registro` | `character varying(50)` | não |  |
| 5 | `dt_competencia` | `character varying(6)` | não |  |
| 6 | `nu_ms` | `character varying(2)` | não |  |
