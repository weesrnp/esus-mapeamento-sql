# tb_sol_exame_citopatologic_qst

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_solexamecitopatologcqst` | `bigint` | sim | PK |
| 2 | `co_sol_exame_citopatologico` | `bigint` | sim | FK → tb_sol_exame_citopatologico |
| 3 | `co_pergunta` | `bigint` | sim | FK → tb_rastreio_cancer_pergunta |

Referenciada por: `tb_sol_exame_citoptlgc_pgt_opc`, `tb_sol_exm_citoptlgc_pgt_data`, `tb_sol_exm_citoptlgc_pgt_outro`
