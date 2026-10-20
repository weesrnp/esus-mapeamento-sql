# tb_sol_exame_citopatologico

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_sol_exame_citopatologic` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `co_requisicao_exame` | `bigint` | sim | FK → tb_requisicao_exame |

Referenciada por: `tb_sol_exame_citopatologic_qst`
