# tl_grupo_ativ_col_prof

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_grp_ativ_col_prof` | `bigint` | sim | PK |
| 4 | `co_grupo` | `bigint` | não |  |
| 5 | `co_prof` | `bigint` | não |  |
| 6 | `st_prof` | `character varying(32)` | não |  |
