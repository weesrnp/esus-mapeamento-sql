# ta_cuidado_compartilhado

Tipo: tabela  
Grupo: auditoria  
Colunas: 24

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacuidadocompartilhado` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_cuidado_compartilhado` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `co_lotacao_solicitante` | `bigint` | não |  |
| 8 | `co_prof_solicitante` | `bigint` | não |  |
| 9 | `co_equipe_solicitante` | `bigint` | não |  |
| 10 | `co_lotacao_executante_atual` | `bigint` | não |  |
| 11 | `co_prof_executante_atual` | `bigint` | não |  |
| 12 | `co_equipe_executante_atual` | `bigint` | não |  |
| 13 | `dt_inicio` | `timestamp without time zone` | não |  |
| 14 | `co_cid10` | `bigint` | não |  |
| 15 | `co_ciap` | `bigint` | não |  |
| 16 | `co_classificcao_prioridd_atual` | `bigint` | não |  |
| 17 | `ds_discussao` | `text` | não |  |
| 18 | `co_ultima_evolucao` | `bigint` | não |  |
| 19 | `st_cuidado_compartilhado` | `bigint` | não |  |
| 20 | `dt_ultima_evolucao` | `timestamp without time zone` | não |  |
| 21 | `st_cidadao_aceita_atend_tic` | `integer` | não |  |
| 22 | `co_unico_cuidado_compartilhado` | `character varying(44)` | não |  |
| 23 | `co_cbo_executante_atual` | `bigint` | não |  |
| 24 | `co_unidade_saude_exec_atual` | `bigint` | não |  |
