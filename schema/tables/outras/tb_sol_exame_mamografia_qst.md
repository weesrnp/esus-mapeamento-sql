# tb_sol_exame_mamografia_qst

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_solexamemamografiaqst` | `bigint` | sim | PK |
| 2 | `co_sol_exame_mamografia` | `bigint` | sim | FK → tb_sol_exame_mamografia |
| 3 | `co_pergunta` | `bigint` | sim | FK → tb_rastreio_cancer_pergunta |

Referenciada por: `tb_sol_exame_mamografi_pgt_opc`, `tb_sol_exm_mamogf_pgt_data`, `tb_sol_exm_mamogf_pgt_outro`
