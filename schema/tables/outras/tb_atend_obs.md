# tb_atend_obs

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atend_obs` | `bigint` | sim | PK |
| 2 | `co_atend_prof_iniciador` | `bigint` | sim | FK → tb_atend_prof |
| 4 | `st_finalizado` | `integer` | sim |  |
| 5 | `co_atend_prof_finalizador` | `bigint` | não | FK → tb_atend_prof |

Referenciada por: `rl_atend_obs_responsavel`, `tb_atend_prof_obs`
