# tl_atend

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 24

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_atend` | `bigint` | sim | PK |
| 4 | `dt_fim` | `timestamp without time zone` | não |  |
| 5 | `dt_inicio` | `timestamp without time zone` | não |  |
| 6 | `qt_referencia` | `bigint` | não |  |
| 7 | `st_atend` | `bigint` | não |  |
| 8 | `co_agendado` | `bigint` | não |  |
| 9 | `co_lotacao` | `bigint` | não |  |
| 10 | `co_classificacao_risco` | `bigint` | não |  |
| 11 | `co_prontuario` | `bigint` | não |  |
| 12 | `co_unidade_saude` | `bigint` | não |  |
| 13 | `co_atend_prof` | `bigint` | não |  |
| 14 | `no_tipo_atend` | `character varying(255)` | não |  |
| 15 | `dt_encaminhamento` | `timestamp without time zone` | não |  |
| 16 | `st_fechado_automaticamente` | `integer` | não |  |
| 17 | `nu_lotacao_anterior` | `bigint` | não |  |
| 18 | `co_unico_atend` | `character varying(96)` | não |  |
| 19 | `tp_local_atend` | `bigint` | não |  |
| 20 | `st_registro_tardio` | `integer` | não |  |
| 21 | `no_justificativa_reg_tardio` | `character varying(50)` | não |  |
| 22 | `dt_criacao_registro` | `timestamp with time zone` | não |  |
| 23 | `dt_ultima_alteracao_status` | `timestamp without time zone` | não |  |
| 24 | `co_equipe` | `bigint` | não |  |
