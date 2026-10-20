# rl_grupo_ativ_col_prof

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_grp_ativ_col_prof` | `bigint` | sim | PK |
| 2 | `co_grupo` | `bigint` | sim | FK → tb_grupo_ativ_col |
| 3 | `co_prof` | `bigint` | sim | FK → tb_prof_grupo_ativ_col |
| 4 | `st_prof` | `character varying(32)` | não |  |
