# ta_registro_vacinacao

Tipo: tabela  
Grupo: auditoria  
Colunas: 25

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taregistrovacinacao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_registro_vacinacao` | `bigint` | não |  |
| 5 | `co_estrategia_vacinacao` | `bigint` | não |  |
| 6 | `co_imunobiologico` | `bigint` | não |  |
| 7 | `co_dose_imunobiologico` | `bigint` | não |  |
| 8 | `co_via_adm_vacina` | `bigint` | não |  |
| 9 | `co_local_apl_vacina` | `bigint` | não |  |
| 10 | `co_vacinacao` | `bigint` | não |  |
| 11 | `co_tipo_registro_vacinacao` | `bigint` | não |  |
| 12 | `st_registro_anterior` | `integer` | não |  |
| 13 | `dt_aprazamento` | `date` | não |  |
| 14 | `dt_aplicacao` | `timestamp with time zone` | não |  |
| 15 | `co_imunobiologico_lote` | `bigint` | não |  |
| 16 | `ds_observacoes` | `character varying(300)` | não |  |
| 17 | `co_grupo_atendimento` | `bigint` | não |  |
| 18 | `st_aplicado_exterior` | `integer` | não |  |
| 19 | `co_unico_registro_vacinacao` | `character varying(96)` | não |  |
| 20 | `co_cbo_prescritor` | `bigint` | não |  |
| 21 | `co_cid10_motivo_indicacao` | `bigint` | não |  |
| 22 | `st_pesquisa_clinica` | `integer` | não |  |
| 23 | `nu_anvisa_protocolo_estudo` | `character varying(10)` | não |  |
| 24 | `nu_anvisa_protocolo_versao` | `character varying(10)` | não |  |
| 25 | `nu_anvisa_numero_registro` | `character varying(10)` | não |  |
