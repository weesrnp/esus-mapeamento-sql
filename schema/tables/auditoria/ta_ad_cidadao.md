# ta_ad_cidadao

Tipo: tabela  
Grupo: auditoria  
Colunas: 24

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taadcidadao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_ad_cidadao` | `bigint` | não |  |
| 5 | `co_equipe` | `bigint` | não |  |
| 6 | `dt_admissao` | `timestamp without time zone` | não |  |
| 7 | `co_ad_modalidade` | `bigint` | não |  |
| 8 | `co_ad_origem` | `bigint` | não |  |
| 9 | `no_especificacao_origem` | `character varying(255)` | não |  |
| 10 | `co_cid10_principal` | `bigint` | não |  |
| 11 | `co_cid10_causa_associada` | `bigint` | não |  |
| 12 | `co_ad_destino` | `bigint` | não |  |
| 13 | `dt_saida` | `timestamp without time zone` | não |  |
| 14 | `dt_ultima_visita` | `timestamp without time zone` | não |  |
| 15 | `dt_proxima_visita` | `timestamp without time zone` | não |  |
| 16 | `co_prontuario` | `bigint` | não |  |
| 17 | `co_cid10_secundario_2` | `bigint` | não |  |
| 18 | `dt_reg_obito` | `timestamp with time zone` | não |  |
| 19 | `st_cidadao_sincronizado` | `integer` | não |  |
| 20 | `st_dt_saida_restaurada` | `integer` | não |  |
| 21 | `st_dt_saida_futura` | `integer` | não |  |
| 22 | `nu_documento_obito` | `character varying(16)` | não |  |
| 23 | `co_unico_ad_cidadao_obito` | `bigint` | não |  |
| 24 | `co_unico_ad_cidadao` | `bigint` | não |  |
