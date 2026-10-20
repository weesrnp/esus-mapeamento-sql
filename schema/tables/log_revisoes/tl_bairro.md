# tl_bairro

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_bairro` | `bigint` | sim | PK |
| 4 | `co_localidade` | `bigint` | não |  |
| 5 | `nu_dne` | `character varying(8)` | não |  |
| 6 | `no_bairro` | `character varying(144)` | não |  |
| 7 | `no_bairro_filtro` | `character varying(144)` | não |  |
