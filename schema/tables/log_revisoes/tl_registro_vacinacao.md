# tl_registro_vacinacao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_registro_vacinacao` | `bigint` | sim | PK |
| 4 | `co_estrategia_vacinacao` | `bigint` | não |  |
| 5 | `co_imunobiologico` | `bigint` | não |  |
| 6 | `co_dose_imunobiologico` | `bigint` | não |  |
| 7 | `co_via_adm_vacina` | `bigint` | não |  |
| 8 | `co_local_apl_vacina` | `bigint` | não |  |
| 9 | `co_vacinacao` | `bigint` | não |  |
| 10 | `co_tipo_registro_vacinacao` | `bigint` | não |  |
| 11 | `st_registro_anterior` | `integer` | não |  |
| 12 | `dt_aprazamento` | `date` | não |  |
| 13 | `dt_aplicacao` | `timestamp with time zone` | não |  |
| 14 | `co_imunobiologico_lote` | `bigint` | não |  |
| 15 | `ds_observacoes` | `character varying(300)` | não |  |
| 16 | `co_grupo_atendimento` | `bigint` | não |  |
| 17 | `st_aplicado_exterior` | `integer` | não |  |
