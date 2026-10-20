# rl_proced_grupo_exame

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_proced_grupo_exame` | `bigint` | sim | PK |
| 2 | `co_grupo_exame` | `bigint` | sim | FK → tb_grupo_exame |
| 3 | `co_proced` | `bigint` | sim | FK → tb_proced |
