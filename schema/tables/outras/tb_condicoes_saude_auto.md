# tb_condicoes_saude_auto

Tipo: tabela  
Grupo: outras  
Colunas: 29

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_condicoes_saude_auto` | `bigint` | sim | PK |
| 2 | `co_cidadao` | `bigint` | sim | FK → tb_cidadao |
| 3 | `st_gestante` | `integer` | não |  |
| 4 | `maternidade_referencia` | `character varying(255)` | não |  |
| 5 | `peso_autorreferido` | `bigint` | não | FK → tb_peso_auto |
| 6 | `st_acamado` | `integer` | não |  |
| 7 | `st_domiciliar` | `integer` | não |  |
| 8 | `st_fumante` | `integer` | não |  |
| 9 | `st_uso_alcool` | `integer` | não |  |
| 10 | `st_uso_outras_drogas` | `integer` | não |  |
| 11 | `st_praticas_complementares` | `integer` | não |  |
| 12 | `st_problema_saude_mental` | `integer` | não |  |
| 13 | `st_hipertensao_arterial` | `integer` | não |  |
| 14 | `st_diabetes` | `integer` | não |  |
| 15 | `st_cancer` | `integer` | não |  |
| 16 | `st_derrame` | `integer` | não |  |
| 17 | `st_infarto` | `integer` | não |  |
| 18 | `st_hanseniase` | `integer` | não |  |
| 19 | `st_tuberculose` | `integer` | não |  |
| 20 | `st_doenca_cardiaca` | `integer` | não |  |
| 21 | `st_problema_rins` | `integer` | não |  |
| 22 | `st_doenca_respiratoria` | `integer` | não |  |
| 23 | `st_intern_ult_12_meses` | `integer` | não |  |
| 24 | `causa_intern_ult_12_meses` | `character varying(255)` | não |  |
| 25 | `st_plantas_medicinais` | `integer` | não |  |
| 26 | `plantas_medicinais` | `character varying(255)` | não |  |
| 27 | `condicao_saude1` | `character varying(255)` | não |  |
| 28 | `condicao_saude2` | `character varying(255)` | não |  |
| 29 | `condicao_saude3` | `character varying(255)` | não |  |

Referenciada por: `rl_condicoes_saude_cardiaca`, `rl_condicoes_saude_respirato`, `rl_condicoes_saude_rins`
