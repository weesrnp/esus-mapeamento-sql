# tb_sol_exame_mamografi_pgt_opc

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_solexamemamogfpgtopc` | `bigint` | sim | PK |
| 2 | `ds_opcao_enum` | `character varying(100)` | sim |  |
| 3 | `co_sol_exame_mamografia_qst` | `bigint` | sim | FK → tb_sol_exame_mamografia_qst |
