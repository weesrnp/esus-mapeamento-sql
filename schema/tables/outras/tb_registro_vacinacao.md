# tb_registro_vacinacao

Tipo: tabela  
Grupo: outras  
Colunas: 22

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_registro_vacinacao` | `bigint` | sim | PK |
| 2 | `co_estrategia_vacinacao` | `bigint` | não | FK → tb_estrategia_vacinacao |
| 3 | `co_imunobiologico` | `bigint` | não | FK → tb_imunobiologico |
| 4 | `co_dose_imunobiologico` | `bigint` | não | FK → tb_dose_imunobiologico |
| 5 | `co_via_adm_vacina` | `bigint` | não | FK → tb_via_adm_vacina |
| 6 | `co_local_apl_vacina` | `bigint` | não | FK → tb_local_apl_vacina |
| 7 | `co_vacinacao` | `bigint` | não | FK → tb_vacinacao |
| 8 | `co_tipo_registro_vacinacao` | `bigint` | não | FK → tb_tipo_registro_vacinacao |
| 9 | `st_registro_anterior` | `integer` | não |  |
| 10 | `dt_aprazamento` | `date` | não |  |
| 11 | `dt_aplicacao` | `timestamp with time zone` | não |  |
| 12 | `co_imunobiologico_lote` | `bigint` | não | FK → tb_imunobiologico_lote |
| 13 | `ds_observacoes` | `character varying(300)` | não |  |
| 14 | `co_grupo_atendimento` | `bigint` | não |  |
| 15 | `st_aplicado_exterior` | `integer` | não |  |
| 16 | `co_unico_registro_vacinacao` | `character varying(96)` | não |  |
| 17 | `co_cbo_prescritor` | `bigint` | não | FK → tb_cbo |
| 18 | `co_cid10_motivo_indicacao` | `bigint` | não | FK → tb_cid10 |
| 19 | `st_pesquisa_clinica` | `integer` | sim |  |
| 20 | `nu_anvisa_protocolo_estudo` | `character varying(10)` | não |  |
| 21 | `nu_anvisa_protocolo_versao` | `character varying(10)` | não |  |
| 22 | `nu_anvisa_numero_registro` | `character varying(10)` | não |  |
