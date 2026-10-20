# tb_atend_prof_obs

Tipo: tabela  
Grupo: outras  
Colunas: 2

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_atend_prof_obs` | `bigint` | sim | PK |
| 2 | `co_atend_obs` | `bigint` | sim | FK → tb_atend_obs |

Referenciada por: `tb_atend_obs_plano_cuidado`
