# tb_faixa_etaria_vacinacao

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_faixa_etaria_vacinacao` | `bigint` | sim | PK |
| 2 | `nu_inicio_ano` | `integer` | não |  |
| 3 | `nu_fim_ano` | `integer` | não |  |
| 4 | `nu_inicio_mes` | `integer` | não |  |
| 5 | `nu_fim_mes` | `integer` | não |  |
| 6 | `nu_inicio_dia` | `integer` | não |  |
| 7 | `nu_fim_dia` | `integer` | não |  |
| 8 | `ds_faixa_etaria` | `character varying(255)` | não |  |
| 9 | `nu_dias_inicio` | `integer` | sim |  |
| 10 | `nu_dias_fim` | `integer` | sim |  |

Referenciada por: `rl_calendario_vacnl_grupo_alvo`, `tb_regra_vacinal_estrategia`
