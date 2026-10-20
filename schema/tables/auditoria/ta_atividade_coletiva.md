# ta_atividade_coletiva

Tipo: tabela  
Grupo: auditoria  
Colunas: 21

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatividadecoletiva` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_atividade_coletiva` | `bigint` | não |  |
| 5 | `co_tipo_atividade` | `bigint` | não |  |
| 6 | `co_lotacao_responsavel` | `bigint` | não |  |
| 7 | `co_localidade` | `bigint` | não |  |
| 8 | `dt_atividade_coletiva` | `date` | não |  |
| 9 | `dt_registro` | `timestamp without time zone` | não |  |
| 10 | `co_turno` | `bigint` | não |  |
| 11 | `nu_participantes` | `integer` | não |  |
| 12 | `co_unidade_saude_local_ativ` | `bigint` | não |  |
| 13 | `co_inep` | `bigint` | não |  |
| 14 | `ds_outra_localidade` | `character varying(250)` | não |  |
| 15 | `st_pse_educacao` | `integer` | não |  |
| 16 | `st_pse_saude` | `integer` | não |  |
| 17 | `co_proced` | `bigint` | não |  |
| 18 | `ds_anotacoes` | `text` | não |  |
| 19 | `co_unico_atividade_coletiva` | `character varying(44)` | não |  |
| 20 | `ds_versao_transport` | `character varying(30)` | não |  |
| 21 | `st_registro_enviado` | `integer` | não |  |
