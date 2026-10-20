# ta_lista_espera

Tipo: tabela  
Grupo: auditoria  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_talistaespera` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_lista_espera` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `co_unidade_saude` | `bigint` | não |  |
| 7 | `co_lista_espera_tipo_atend` | `bigint` | não |  |
| 8 | `co_equipe` | `bigint` | não |  |
| 9 | `ds_motivo_espera` | `character varying(255)` | não |  |
| 10 | `dt_entrada` | `timestamp without time zone` | não |  |
| 11 | `dt_saida` | `timestamp without time zone` | não |  |
| 12 | `co_motivo_saida` | `bigint` | não |  |
| 13 | `ds_observacao_saida` | `character varying(255)` | não |  |
| 14 | `nu_tentativas_contato` | `integer` | não |  |
| 15 | `co_tipo_servico` | `bigint` | não |  |
| 16 | `st_ativo` | `integer` | não |  |
| 17 | `co_cuidado_compartilhado_evol` | `bigint` | não |  |
