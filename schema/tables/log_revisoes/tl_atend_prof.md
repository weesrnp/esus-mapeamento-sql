# tl_atend_prof

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 24

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_atend_prof` | `bigint` | sim | PK |
| 4 | `dt_fim` | `timestamp without time zone` | não |  |
| 5 | `dt_inicio` | `timestamp without time zone` | não |  |
| 6 | `co_atend` | `bigint` | não |  |
| 7 | `co_atend_prof_tipo_encam_intrn` | `bigint` | não |  |
| 8 | `co_lotacao` | `bigint` | não |  |
| 9 | `tp_atend_prof` | `bigint` | não |  |
| 10 | `st_atend_prof` | `bigint` | não |  |
| 11 | `st_atend_enviado` | `integer` | não |  |
| 12 | `co_unico_ad_cidadao` | `bigint` | não |  |
| 13 | `co_classificacao_risco` | `bigint` | não |  |
| 14 | `co_unico_atend_prof` | `character varying(96)` | não |  |
| 15 | `tp_atend` | `bigint` | não |  |
| 16 | `nu_conselho_classe` | `character varying(100)` | não |  |
| 17 | `co_uf_emissora_conselho_classe` | `bigint` | não |  |
| 18 | `co_conselho_classe` | `bigint` | não |  |
| 19 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 20 | `co_racionalidade_saude` | `bigint` | não |  |
| 21 | `co_lotacao_atend_compartilhado` | `bigint` | não |  |
| 22 | `st_registro_historico` | `integer` | não |  |
| 23 | `nu_revisao` | `integer` | não |  |
| 24 | `st_cancelado` | `integer` | não |  |
