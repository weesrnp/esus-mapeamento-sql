# tb_rastreio_cancer_pergunta

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_rastreiocancerpergunta` | `bigint` | sim | PK |
| 2 | `no_pergunta` | `character varying(25)` | sim |  |
| 3 | `ds_pergunta` | `character varying(255)` | não |  |

Referenciada por: `tb_sol_exame_citopatologic_qst`, `tb_sol_exame_mamografia_qst`
