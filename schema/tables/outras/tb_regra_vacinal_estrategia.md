# tb_regra_vacinal_estrategia

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_regra_vacinal_estrategia` | `bigint` | sim | PK |
| 2 | `co_imunobiologico` | `bigint` | não | FK → tb_imunobiologico |
| 3 | `co_dose_imunobiologico` | `bigint` | não | FK → tb_dose_imunobiologico |
| 4 | `co_faixa_etaria_vacinacao` | `bigint` | não | FK → tb_faixa_etaria_vacinacao |
| 5 | `co_estrategia_vacinacao` | `bigint` | não | FK → tb_estrategia_vacinacao |
| 7 | `nu_dias_aprazamento` | `integer` | não |  |
| 8 | `co_proxima_regra_vacinal` | `bigint` | não | FK → tb_regra_vacinal_estrategia |
| 9 | `ds_versao_minima_transport` | `character varying(30)` | não |  |
| 10 | `ds_versao_maxima_transport` | `character varying(30)` | não |  |

Referenciada por: `tb_regra_vacinal_estrategia`
