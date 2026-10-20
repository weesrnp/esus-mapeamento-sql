# tb_ativ_col_grupo

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ativ_col_grupo` | `bigint` | sim | PK |
| 2 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 3 | `st_ficha` | `character varying(32)` | não |  |
| 4 | `co_grupo` | `bigint` | não | FK → tb_grupo_ativ_col |
| 5 | `dt_atualizacao` | `timestamp with time zone` | não |  |
