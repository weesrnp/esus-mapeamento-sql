# ta_condicoes_saude_auto

Tipo: tabela  
Grupo: auditoria  
Colunas: 32

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacondicoessaudeauto` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_condicoes_saude_auto` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `st_gestante` | `integer` | não |  |
| 7 | `maternidade_referencia` | `character varying(255)` | não |  |
| 8 | `peso_autorreferido` | `bigint` | não |  |
| 9 | `st_acamado` | `integer` | não |  |
| 10 | `st_domiciliar` | `integer` | não |  |
| 11 | `st_fumante` | `integer` | não |  |
| 12 | `st_uso_alcool` | `integer` | não |  |
| 13 | `st_uso_outras_drogas` | `integer` | não |  |
| 14 | `st_praticas_complementares` | `integer` | não |  |
| 15 | `st_problema_saude_mental` | `integer` | não |  |
| 16 | `st_hipertensao_arterial` | `integer` | não |  |
| 17 | `st_diabetes` | `integer` | não |  |
| 18 | `st_cancer` | `integer` | não |  |
| 19 | `st_derrame` | `integer` | não |  |
| 20 | `st_infarto` | `integer` | não |  |
| 21 | `st_hanseniase` | `integer` | não |  |
| 22 | `st_tuberculose` | `integer` | não |  |
| 23 | `st_doenca_cardiaca` | `integer` | não |  |
| 24 | `st_problema_rins` | `integer` | não |  |
| 25 | `st_doenca_respiratoria` | `integer` | não |  |
| 26 | `st_intern_ult_12_meses` | `integer` | não |  |
| 27 | `causa_intern_ult_12_meses` | `character varying(255)` | não |  |
| 28 | `st_plantas_medicinais` | `integer` | não |  |
| 29 | `plantas_medicinais` | `character varying(255)` | não |  |
| 30 | `condicao_saude1` | `character varying(255)` | não |  |
| 31 | `condicao_saude2` | `character varying(255)` | não |  |
| 32 | `condicao_saude3` | `character varying(255)` | não |  |
