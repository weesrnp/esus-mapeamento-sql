# ta_atend

Tipo: tabela  
Grupo: auditoria  
Colunas: 25

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatend` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_atend` | `bigint` | não |  |
| 5 | `dt_fim` | `timestamp without time zone` | não |  |
| 6 | `dt_inicio` | `timestamp without time zone` | não |  |
| 7 | `qt_referencia` | `bigint` | não |  |
| 8 | `st_atend` | `bigint` | não |  |
| 9 | `co_agendado` | `bigint` | não |  |
| 10 | `co_responsavel` | `bigint` | não |  |
| 11 | `co_classificacao_risco` | `bigint` | não |  |
| 12 | `co_prontuario` | `bigint` | não |  |
| 13 | `co_unidade_saude` | `bigint` | não |  |
| 14 | `co_atend_prof` | `bigint` | não |  |
| 15 | `dt_encaminhamento` | `timestamp without time zone` | não |  |
| 16 | `st_fechado_automaticamente` | `integer` | não |  |
| 17 | `nu_responsavel_anterior` | `bigint` | não |  |
| 18 | `co_unico_atend` | `character varying(96)` | não |  |
| 19 | `tp_local_atend` | `bigint` | não |  |
| 20 | `st_registro_tardio` | `integer` | não |  |
| 21 | `no_justificativa_reg_tardio` | `character varying(50)` | não |  |
| 22 | `dt_criacao_registro` | `timestamp with time zone` | não |  |
| 23 | `dt_ultima_alteracao_status` | `timestamp without time zone` | não |  |
| 24 | `co_equipe` | `bigint` | não |  |
| 25 | `st_atend_revisao` | `bigint` | não |  |
