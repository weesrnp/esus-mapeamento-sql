# tb_exame_hemoglobina_glicada

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_exame_hemoglobina_glicd` | `bigint` | sim | PK |
| 2 | `co_exame_requisitado` | `bigint` | não | FK → tb_exame_requisitado |
| 3 | `vl_hemoglobina_glicada` | `double precision` | não |  |
