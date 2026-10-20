# tb_sol_exame_citoptlgc_pgt_opc

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_solexamecitoptlgcpgtopc` | `bigint` | sim | PK |
| 2 | `ds_opcao_enum` | `character varying(100)` | sim |  |
| 3 | `co_sol_exame_citopatologic_qst` | `bigint` | sim | FK → tb_sol_exame_citopatologic_qst |
