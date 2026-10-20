# ta_usuario

Tipo: tabela  
Grupo: auditoria  
Colunas: 21

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tausuario` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_usuario` | `bigint` | não |  |
| 5 | `st_bloqueado` | `integer` | não |  |
| 6 | `ds_senha` | `character varying(255)` | não |  |
| 7 | `st_trocar_senha` | `integer` | não |  |
| 8 | `co_ator` | `bigint` | não |  |
| 9 | `dt_ultima_atualizacao_senha` | `date` | não |  |
| 10 | `st_termo_uso` | `integer` | não |  |
| 11 | `st_forcar_troca_senha` | `integer` | não |  |
| 12 | `nr_tentativas_acesso` | `integer` | não |  |
| 13 | `ds_login` | `character varying(255)` | não |  |
| 14 | `dt_envio_email_recuperar_senha` | `timestamp without time zone` | não |  |
| 15 | `st_visualizou_novidades` | `integer` | não |  |
| 16 | `st_pesquisa_respondida` | `integer` | não |  |
| 17 | `dt_primeiro_login_versao` | `timestamp without time zone` | não |  |
| 18 | `dt_pesquisa_respondida` | `timestamp without time zone` | não |  |
| 19 | `st_bloqueado_unificando_bases` | `integer` | não |  |
| 20 | `st_notificacao_novidades` | `integer` | não |  |
| 21 | `st_termo_teleinterconsulta` | `integer` | não |  |
