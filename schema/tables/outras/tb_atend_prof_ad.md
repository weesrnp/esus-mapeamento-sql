# tb_atend_prof_ad

Tipo: tabela  
Grupo: outras  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_atend_prof_ad` | `bigint` | sim | PK |
| 2 | `st_elegivel` | `integer` | não |  |
| 3 | `co_ad_origem` | `bigint` | não | FK → tb_ad_origem |
| 4 | `co_ad_modalidade` | `bigint` | não | FK → tb_ad_modalidade |
| 5 | `co_ad_destino` | `bigint` | não | FK → tb_ad_destino |
| 6 | `co_ad_tipo_elegivel` | `bigint` | não | FK → tb_ad_tipo_elegivel |
| 7 | `nu_serial_aplicativo` | `character varying(100)` | não |  |
| 8 | `ds_fabricante_dispositivo` | `character varying(100)` | não |  |
| 9 | `ds_modelo_dispositivo` | `character varying(100)` | não |  |
| 10 | `co_cid10_principal` | `bigint` | não | FK → tb_cid10 |
| 11 | `co_cid10_secundario_1` | `bigint` | não | FK → tb_cid10 |
| 12 | `co_cid10_secundario_2` | `bigint` | não | FK → tb_cid10 |
| 13 | `nu_cns_cuidador` | `character varying(16)` | não |  |
| 14 | `no_cuidador` | `character varying(255)` | não |  |
| 15 | `tp_cds_cuidador` | `bigint` | não | FK → tb_cds_tipo_cuidador |
| 16 | `dt_nascimento_cuidador` | `date` | não |  |
| 17 | `nu_cpf_cuidador` | `character varying(11)` | não |  |

Referenciada por: `rl_atend_prof_ad_tipo_inelegvl`, `tb_ad_resposta`, `tb_atend_prof_ad_qst`
