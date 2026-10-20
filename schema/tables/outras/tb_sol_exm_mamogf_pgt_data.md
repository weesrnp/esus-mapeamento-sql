# tb_sol_exm_mamogf_pgt_data

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_solexamemamogfpgtdat` | `bigint` | sim | PK |
| 2 | `dt_data` | `date` | sim |  |
| 3 | `co_sol_exame_mamografia_qst` | `bigint` | sim | FK → tb_sol_exame_mamografia_qst |
