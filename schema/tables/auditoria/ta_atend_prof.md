# ta_atend_prof

Tipo: tabela  
Grupo: auditoria  
Colunas: 30

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatendprof` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_atend_prof` | `bigint` | não |  |
| 5 | `dt_fim` | `timestamp without time zone` | não |  |
| 6 | `dt_inicio` | `timestamp without time zone` | não |  |
| 7 | `co_atend` | `bigint` | não |  |
| 8 | `co_atend_prof_tipo_encam_intrn` | `bigint` | não |  |
| 9 | `co_lotacao` | `bigint` | não |  |
| 10 | `tp_atend_prof` | `bigint` | não |  |
| 11 | `st_atend_prof` | `bigint` | não |  |
| 12 | `st_atend_enviado` | `integer` | não |  |
| 13 | `co_unico_ad_cidadao` | `bigint` | não |  |
| 14 | `co_classificacao_risco` | `bigint` | não |  |
| 15 | `co_unico_atend_prof` | `character varying(96)` | não |  |
| 16 | `tp_atend` | `bigint` | não |  |
| 17 | `nu_conselho_classe` | `character varying(100)` | não |  |
| 18 | `co_uf_emissora_conselho_classe` | `bigint` | não |  |
| 19 | `co_conselho_classe` | `bigint` | não |  |
| 20 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 21 | `co_racionalidade_saude` | `bigint` | não |  |
| 22 | `co_lotacao_atend_compartilhado` | `bigint` | não |  |
| 23 | `st_registro_historico` | `integer` | não |  |
| 24 | `nu_revisao` | `integer` | não |  |
| 25 | `st_cancelado` | `integer` | não |  |
| 26 | `co_estagio` | `bigint` | não |  |
| 27 | `co_marcador_consumo_alim` | `bigint` | não |  |
| 28 | `tp_participacao_cidadao` | `bigint` | não |  |
| 29 | `tp_participacao_prof_convidado` | `bigint` | não |  |
| 30 | `co_assinatura_eletronica_atend` | `bigint` | não |  |
