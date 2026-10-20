# rl_grupo_part_ativ_col_lotacao

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_grupo_part_ac_lotacao` | `bigint` | sim | PK |
| 2 | `co_grupo_part_ativ_col` | `bigint` | sim | FK → tb_grupo_part_ativ_col |
| 3 | `co_lotacao` | `bigint` | sim | FK → tb_lotacao |
