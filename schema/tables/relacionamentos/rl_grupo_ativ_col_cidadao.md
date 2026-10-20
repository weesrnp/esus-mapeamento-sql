# rl_grupo_ativ_col_cidadao

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_grp_ativ_col_cidadao` | `bigint` | sim | PK |
| 2 | `co_grupo` | `bigint` | sim | FK → tb_grupo_ativ_col |
| 3 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao_grupo_ativ_col |
| 4 | `st_cidadao` | `character varying(32)` | não |  |
