# tl_ad_cidadao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 24

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_ad_cidadao` | `bigint` | sim | PK |
| 4 | `co_equipe` | `bigint` | não |  |
| 5 | `dt_admissao` | `timestamp without time zone` | não |  |
| 6 | `co_ad_modalidade` | `bigint` | não |  |
| 7 | `co_ad_origem` | `bigint` | não |  |
| 8 | `co_cid10_principal` | `bigint` | não |  |
| 9 | `co_cid10_causa_associada` | `bigint` | não |  |
| 10 | `co_ad_destino` | `bigint` | não |  |
| 11 | `dt_saida` | `timestamp without time zone` | não |  |
| 12 | `dt_ultima_visita` | `timestamp without time zone` | não |  |
| 13 | `dt_proxima_visita` | `timestamp without time zone` | não |  |
| 14 | `qt_referencia` | `bigint` | não |  |
| 15 | `co_prontuario` | `bigint` | não |  |
| 16 | `no_especificacao_origem` | `character varying(255)` | não |  |
| 17 | `co_cid10_secundario_2` | `bigint` | não |  |
| 18 | `dt_reg_obito` | `timestamp with time zone` | não |  |
| 19 | `st_cidadao_sincronizado` | `integer` | não |  |
| 20 | `st_dt_saida_restaurada` | `integer` | não |  |
| 21 | `st_dt_saida_futura` | `integer` | não |  |
| 22 | `nu_documento_obito` | `character varying(16)` | não |  |
| 23 | `co_unico_ad_cidadao_obito` | `bigint` | não |  |
| 24 | `co_unico_ad_cidadao` | `bigint` | não |  |
