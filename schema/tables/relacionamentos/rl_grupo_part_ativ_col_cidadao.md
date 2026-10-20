# rl_grupo_part_ativ_col_cidadao

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_grupo_part_ac_cidadao` | `bigint` | sim | PK |
| 2 | `co_grupo_part_ativ_col` | `bigint` | sim | FK → tb_grupo_part_ativ_col |
| 3 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
