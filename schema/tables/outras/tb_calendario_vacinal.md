# tb_calendario_vacinal

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_calendario_vacinal` | `bigint` | sim | PK |
| 2 | `co_imunobiologico` | `bigint` | não | FK → tb_imunobiologico |
| 3 | `co_dose_imunobiologico` | `bigint` | não | FK → tb_dose_imunobiologico |
| 4 | `nu_ordem_imunobiologico` | `integer` | não |  |
| 5 | `nu_ordem_dose` | `integer` | não |  |
| 6 | `ds_imunobiologico` | `character varying(255)` | não |  |

Referenciada por: `rl_calendario_vacnl_grupo_alvo`
