# rl_tecido_mole_lesao

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_rl_tecido_mole_lesao` | `bigint` | sim | PK |
| 2 | `co_tecido_mole` | `bigint` | sim | FK → tb_tecido_mole |
| 3 | `co_lesao` | `bigint` | sim | FK → tb_tecido_mole_lesao |
