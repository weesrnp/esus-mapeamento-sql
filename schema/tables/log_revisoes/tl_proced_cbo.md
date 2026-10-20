# tl_proced_cbo

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_proced` | `bigint` | sim | PK |
| 4 | `co_cbo` | `bigint` | sim | PK |
| 5 | `dt_competencia` | `character varying(6)` | não |  |
| 6 | `st_ativo` | `integer` | não |  |
