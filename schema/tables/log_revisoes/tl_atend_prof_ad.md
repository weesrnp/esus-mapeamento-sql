# tl_atend_prof_ad

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 19

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_atend_prof_ad` | `bigint` | sim | PK |
| 4 | `st_elegivel` | `integer` | não |  |
| 5 | `co_ad_origem` | `bigint` | não |  |
| 6 | `co_ad_modalidade` | `bigint` | não |  |
| 7 | `co_ad_destino` | `bigint` | não |  |
| 8 | `co_ad_tipo_elegivel` | `bigint` | não |  |
| 9 | `nu_serial_aplicativo` | `character varying(100)` | não |  |
| 10 | `ds_fabricante_dispositivo` | `character varying(100)` | não |  |
| 11 | `ds_modelo_dispositivo` | `character varying(100)` | não |  |
| 12 | `co_cid10_principal` | `bigint` | não |  |
| 13 | `co_cid10_secundario_1` | `bigint` | não |  |
| 14 | `co_cid10_secundario_2` | `bigint` | não |  |
| 15 | `nu_cns_cuidador` | `character varying(16)` | não |  |
| 16 | `no_cuidador` | `character varying(255)` | não |  |
| 17 | `tp_cds_cuidador` | `bigint` | não |  |
| 18 | `dt_nascimento_cuidador` | `date` | não |  |
| 19 | `nu_cpf_cuidador` | `character varying(11)` | não |  |
