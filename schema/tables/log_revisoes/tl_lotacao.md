# tl_lotacao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 16

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `st_ativo` | `integer` | não |  |
| 4 | `dt_desativacao_lotacao` | `timestamp without time zone` | não |  |
| 5 | `co_cbo` | `bigint` | não |  |
| 6 | `co_prof` | `bigint` | não |  |
| 7 | `co_unidade_saude` | `bigint` | não |  |
| 8 | `co_equipe` | `bigint` | não |  |
| 9 | `co_ator_papel` | `bigint` | sim | PK |
| 10 | `st_alterada_manual` | `integer` | não |  |
| 11 | `st_importada` | `integer` | não |  |
| 12 | `st_agenda_alterada_manual` | `integer` | não |  |
| 13 | `dt_ultima_tentativa_envio` | `timestamp with time zone` | não |  |
| 14 | `st_sincronizacao` | `character varying(48)` | não |  |
| 15 | `st_ativo_agenda_online` | `integer` | não |  |
| 16 | `ds_ultima_tentativa` | `text` | não |  |
