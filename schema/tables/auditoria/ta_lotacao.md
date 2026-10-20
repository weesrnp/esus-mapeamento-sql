# ta_lotacao

Tipo: tabela  
Grupo: auditoria  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_talotacao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `dt_desativacao_lotacao` | `timestamp without time zone` | não |  |
| 5 | `co_cbo` | `bigint` | não |  |
| 6 | `co_prof` | `bigint` | não |  |
| 7 | `co_unidade_saude` | `bigint` | não |  |
| 8 | `co_equipe` | `bigint` | não |  |
| 9 | `co_ator_papel` | `bigint` | não |  |
| 10 | `st_atualiza_perfil` | `integer` | não |  |
| 11 | `st_importada` | `integer` | não |  |
| 12 | `st_agenda_alterada_manual` | `integer` | não |  |
| 13 | `dt_ultima_tentativa_envio` | `timestamp with time zone` | não |  |
| 14 | `st_sincronizacao` | `character varying(48)` | não |  |
| 15 | `st_ativo_agenda_online` | `integer` | não |  |
| 16 | `ds_ultima_tentativa` | `text` | não |  |
| 17 | `co_unico_lotacao` | `character varying(255)` | não |  |
