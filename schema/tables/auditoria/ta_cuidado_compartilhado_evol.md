# ta_cuidado_compartilhado_evol

Tipo: tabela  
Grupo: auditoria  
Colunas: 23

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacuidadocompartilhadvl` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_cuidado_compartlhd_evol` | `bigint` | não |  |
| 5 | `co_cuidado_compartilhado` | `bigint` | não |  |
| 6 | `co_conduta_cuidado_compartilhd` | `bigint` | não |  |
| 7 | `co_lotacao` | `bigint` | não |  |
| 8 | `dt_evolucao` | `timestamp without time zone` | não |  |
| 9 | `ds_evolucao` | `text` | não |  |
| 10 | `co_unico_cuidado_evolucao` | `character varying(44)` | não |  |
| 11 | `co_unico_discussao` | `character varying(44)` | não |  |
| 12 | `co_agendado` | `bigint` | não |  |
| 13 | `co_lotacao_afetada` | `bigint` | não |  |
| 14 | `co_lotacao_executante` | `bigint` | não |  |
| 15 | `ds_versao_transport` | `character varying(30)` | não |  |
| 16 | `st_enviado` | `integer` | não |  |
| 17 | `co_sequencial_evolucao` | `integer` | não |  |
| 18 | `co_evolucao_anterior` | `bigint` | não |  |
| 19 | `co_classificacao_prioridade` | `bigint` | não |  |
| 20 | `co_reclassificacao_prioridade` | `bigint` | não |  |
| 21 | `co_enviar_garantiaacesso` | `bigint` | não |  |
| 22 | `co_cbo_executante` | `bigint` | não |  |
| 23 | `co_unidade_saude_executante` | `bigint` | não |  |
