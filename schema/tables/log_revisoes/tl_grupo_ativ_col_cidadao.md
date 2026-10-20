# tl_grupo_ativ_col_cidadao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_grp_ativ_col_cidadao` | `bigint` | sim | PK |
| 4 | `co_grupo` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `st_cidadao` | `character varying(32)` | não |  |
