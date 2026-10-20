# tl_ativ_col_grupo

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_ativ_col_grupo` | `bigint` | sim | PK |
| 4 | `co_unico_ficha` | `character varying(96)` | não |  |
| 5 | `st_ficha` | `character varying(32)` | não |  |
| 6 | `co_grupo` | `bigint` | não |  |
| 7 | `dt_atualizacao` | `timestamp with time zone` | não |  |
