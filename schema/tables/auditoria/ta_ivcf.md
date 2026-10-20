# ta_ivcf

Tipo: tabela  
Grupo: auditoria  
Colunas: 21

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taivcf` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_ivcf` | `bigint` | não |  |
| 5 | `co_prontuario` | `bigint` | não |  |
| 6 | `co_atend_prof` | `bigint` | não |  |
| 7 | `nu_resultado` | `integer` | não |  |
| 8 | `st_sg_idade` | `integer` | não |  |
| 9 | `st_sg_percepcao_saude` | `integer` | não |  |
| 10 | `st_sg_avd_instrumental` | `integer` | não |  |
| 11 | `st_sg_avd_basica` | `integer` | não |  |
| 12 | `st_sg_cognicao` | `integer` | não |  |
| 13 | `st_sg_humor` | `integer` | não |  |
| 14 | `st_sg_alcance_preensao_pinca` | `integer` | não |  |
| 15 | `st_sg_cap_aerobica_muscular` | `integer` | não |  |
| 16 | `st_sg_marcha` | `integer` | não |  |
| 17 | `st_sg_continencia` | `integer` | não |  |
| 18 | `st_sg_visao` | `integer` | não |  |
| 19 | `st_sg_audicao` | `integer` | não |  |
| 20 | `st_sg_comorbidade` | `integer` | não |  |
| 21 | `dt_resultado` | `timestamp without time zone` | não |  |
