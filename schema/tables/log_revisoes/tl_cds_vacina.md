# tl_cds_vacina

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 21

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cds_vacina` | `bigint` | sim | PK |
| 4 | `co_estrategia_vacinacao` | `bigint` | não |  |
| 5 | `co_imunobiologico` | `bigint` | não |  |
| 6 | `co_dose_imunobiologico` | `bigint` | não |  |
| 7 | `ds_lote` | `character varying(255)` | não |  |
| 8 | `ds_lote_filtro` | `character varying(255)` | não |  |
| 9 | `no_fabricante` | `character varying(255)` | não |  |
| 10 | `no_fabricante_filtro` | `character varying(255)` | não |  |
| 11 | `co_cds_vacinacao` | `bigint` | não |  |
| 12 | `co_grupo_atendimento` | `bigint` | não |  |
| 13 | `co_cbo_prescritor` | `bigint` | não |  |
| 14 | `co_cid10_motivo_indicacao` | `bigint` | não |  |
| 15 | `st_pesquisa_clinica` | `integer` | não |  |
| 16 | `ds_anvisa_protocolo_estudo` | `character varying(255)` | não |  |
| 17 | `ds_anvisa_protocolo_versao` | `character varying(255)` | não |  |
| 18 | `ds_anvisa_numero_registro` | `character varying(255)` | não |  |
| 19 | `co_via_adm_vacina` | `bigint` | não |  |
| 20 | `co_local_apl_vacina` | `bigint` | não |  |
| 21 | `co_cds_imunobiologico_fabrcnt` | `bigint` | não |  |
