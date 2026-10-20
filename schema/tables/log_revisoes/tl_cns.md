# tl_cns

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cns` | `bigint` | sim | PK |
| 4 | `nu_cns` | `character varying(15)` | não |  |
| 5 | `st_definitivo` | `integer` | não |  |
| 6 | `co_cidadao` | `bigint` | não |  |
