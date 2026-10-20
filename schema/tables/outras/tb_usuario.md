# tb_usuario

Tipo: tabela  
Grupo: outras  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_usuario` | `bigint` | sim | PK |
| 2 | `st_bloqueado` | `integer` | sim |  |
| 3 | `ds_senha` | `character varying(255)` | não |  |
| 5 | `co_ator` | `bigint` | não | FK → tb_ator |
| 6 | `dt_ultima_atualizacao_senha` | `date` | não |  |
| 7 | `st_termo_uso` | `integer` | não |  |
| 8 | `st_forcar_troca_senha` | `integer` | sim |  |
| 9 | `nr_tentativas_acesso` | `integer` | sim |  |
| 10 | `ds_login` | `character varying(255)` | não |  |
| 11 | `dt_envio_email_recuperar_senha` | `timestamp without time zone` | não |  |
| 12 | `st_visualizou_novidades` | `integer` | não |  |
| 13 | `st_pesquisa_respondida` | `integer` | não |  |
| 14 | `dt_primeiro_login_versao` | `timestamp without time zone` | não |  |
| 15 | `dt_pesquisa_respondida` | `timestamp without time zone` | não |  |
| 16 | `st_bloqueado_unificando_bases` | `integer` | não |  |
| 17 | `st_notificacao_novidades` | `integer` | não |  |
| 18 | `st_termo_teleinterconsulta` | `integer` | sim |  |

Referenciada por: `tb_arquivo_temporario`, `tb_auditoria_processo`, `tb_historico_acesso`, `tb_justificativa_agenda`, `tb_justificativa_prontuario`, `tb_justificativa_status_ciddao`, `tb_lembrete_profissional`, `tb_prof`, `tb_sessao_sincronizacao`, `tb_token_redefinicao_senha`
