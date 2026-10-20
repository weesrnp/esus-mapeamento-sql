# rl_proced_exame_detalhe

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_proced_exame_detalhe` | `bigint` | sim | PK |
| 2 | `co_proced` | `bigint` | não | FK → tb_proced |
| 3 | `co_exame_detalhe` | `bigint` | não | FK → tb_exame_detalhe |

Referenciada por: `tb_exame_detalhe_resultado`
