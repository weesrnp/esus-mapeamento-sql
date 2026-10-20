# tb_envio_rnds

Tipo: tabela  
Grupo: outras  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_envio_rnds` | `bigint` | sim | PK |
| 2 | `co_unico_atend_prof` | `character varying(96)` | sim |  |
| 3 | `co_registro` | `bigint` | sim |  |
| 4 | `no_tipo_registro` | `character varying(96)` | sim |  |
| 5 | `st_envio` | `character varying(96)` | não |  |
| 6 | `co_unico_rnds` | `character varying(96)` | não |  |
| 7 | `dt_ultima_tentativa` | `timestamp without time zone` | não |  |
| 8 | `nu_tentativas_envio` | `bigint` | não |  |
| 9 | `co_localidade` | `bigint` | não |  |
| 10 | `nu_cns_prof` | `character varying(15)` | não |  |
| 11 | `bl_json_envio` | `bytea` | não |  |
| 12 | `nu_versao_pec` | `character varying(20)` | não |  |
| 13 | `ds_erro` | `character varying(4000)` | não |  |
| 14 | `st_necessita_envio` | `integer` | não |  |
| 15 | `ds_possivel_solucao` | `character varying(1000)` | não |  |
| 16 | `st_inativado_automaticamente` | `integer` | não |  |
| 17 | `st_assinado` | `integer` | não |  |
