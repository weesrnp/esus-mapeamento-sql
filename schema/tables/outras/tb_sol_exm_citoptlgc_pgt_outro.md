# tb_sol_exm_citoptlgc_pgt_outro

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_solexamecitoptlgcpgtout` | `bigint` | sim | PK |
| 2 | `ds_outros` | `character varying(150)` | sim |  |
| 3 | `co_sol_exame_citopatologic_qst` | `bigint` | sim | FK → tb_sol_exame_citopatologic_qst |
