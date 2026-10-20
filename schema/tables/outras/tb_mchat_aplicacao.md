# tb_mchat_aplicacao

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_mchataplicacao` | `bigint` | sim | PK |
| 2 | `co_mchat` | `bigint` | sim | FK → tb_mchat |
| 3 | `co_pergunta` | `bigint` | sim | FK → tb_mchat_pergunta |
| 4 | `st_passou` | `integer` | não |  |

Referenciada por: `tb_mchat_pergunta_opcoes`, `tb_mchat_pergunta_outros`
