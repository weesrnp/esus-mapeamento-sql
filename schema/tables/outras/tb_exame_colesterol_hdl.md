# tb_exame_colesterol_hdl

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_exame_colesterol_hdl` | `bigint` | sim | PK |
| 2 | `co_exame_requisitado` | `bigint` | não | FK → tb_exame_requisitado |
| 3 | `vl_colesterol_hdl` | `double precision` | não |  |
