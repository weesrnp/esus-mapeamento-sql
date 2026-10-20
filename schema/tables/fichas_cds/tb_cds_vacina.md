# tb_cds_vacina

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_vacina` | `bigint` | sim | PK |
| 2 | `co_estrategia_vacinacao` | `bigint` | não | FK → tb_estrategia_vacinacao |
| 3 | `co_imunobiologico` | `bigint` | não | FK → tb_imunobiologico |
| 4 | `co_dose_imunobiologico` | `bigint` | não | FK → tb_dose_imunobiologico |
| 5 | `ds_lote` | `character varying(255)` | não |  |
| 6 | `ds_lote_filtro` | `character varying(255)` | não |  |
| 9 | `co_cds_vacinacao` | `bigint` | não | FK → tb_cds_vacinacao |
| 10 | `co_grupo_atendimento` | `bigint` | não |  |
| 11 | `co_cbo_prescritor` | `bigint` | não | FK → tb_cbo |
| 12 | `co_cid10_motivo_indicacao` | `bigint` | não | FK → tb_cid10 |
| 13 | `st_pesquisa_clinica` | `integer` | não |  |
| 14 | `ds_anvisa_protocolo_estudo` | `character varying(255)` | não |  |
| 15 | `ds_anvisa_protocolo_versao` | `character varying(255)` | não |  |
| 16 | `ds_anvisa_numero_registro` | `character varying(255)` | não |  |
| 17 | `co_via_adm_vacina` | `bigint` | não | FK → tb_via_adm_vacina |
| 18 | `co_local_apl_vacina` | `bigint` | não | FK → tb_local_apl_vacina |
| 19 | `co_cds_imunobiologico_fabrcnt` | `bigint` | não | FK → tb_cds_imunobiologico_fabrcnt |
