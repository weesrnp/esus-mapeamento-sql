# tb_ativ_col_unificacao_base

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ativ_col_unif_base` | `bigint` | sim | PK |
| 2 | `co_unificacao_base` | `bigint` | sim | FK → tb_unificacao_base |
| 3 | `co_atividade_coletiva` | `bigint` | sim | FK → tb_atividade_coletiva |
| 4 | `co_atividade_coletiva_local` | `bigint` | sim |  |

Referenciada por: `tb_lotacao_env_unificacao_base`
