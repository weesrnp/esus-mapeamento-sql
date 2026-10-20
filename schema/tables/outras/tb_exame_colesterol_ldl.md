# tb_exame_colesterol_ldl

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_exame_colesterol_ldl` | `bigint` | sim | PK |
| 2 | `co_exame_requisitado` | `bigint` | não | FK → tb_exame_requisitado |
| 3 | `vl_colesterol_ldl` | `double precision` | não |  |
