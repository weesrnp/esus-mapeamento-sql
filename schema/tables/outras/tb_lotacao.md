# tb_lotacao

Tipo: tabela  
Grupo: outras  
Colunas: 14

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 2 | `dt_desativacao_lotacao` | `timestamp without time zone` | não |  |
| 3 | `co_cbo` | `bigint` | sim | FK → tb_cbo |
| 4 | `co_prof` | `bigint` | sim | FK → tb_prof |
| 5 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |
| 6 | `co_equipe` | `bigint` | não | FK → tb_equipe |
| 7 | `co_ator_papel` | `bigint` | sim | PK |
| 8 | `st_atualiza_perfil` | `integer` | não |  |
| 9 | `st_importada` | `integer` | não |  |
| 10 | `st_agenda_alterada_manual` | `integer` | não |  |
| 11 | `dt_ultima_tentativa_envio` | `timestamp with time zone` | não |  |
| 12 | `st_sincronizacao` | `character varying(48)` | não |  |
| 13 | `st_ativo_agenda_online` | `integer` | não |  |
| 14 | `ds_ultima_tentativa` | `text` | não |  |
| 15 | `co_unico_lotacao` | `character varying(255)` | não |  |

Referenciada por: `rl_atend_obs_responsavel`, `rl_ativ_col_lot_env`, `rl_grupo_part_ativ_col_lotacao`, `rl_inscrito_topico_notificacao`, `tb_agendado`, `tb_atend_prof`, `tb_atend_prof_tipo_encam_intrn`, `tb_atividade_coletiva`, `tb_cfg_agenda_online_detalhe`, `tb_config_agenda_fechamento`, `tb_cuidado_compartilhado`, `tb_cuidado_compartilhado_evol`, `tb_estagio`, `tb_grupo_part_ativ_col`, `tb_justificativa_status_ciddao`, `tb_lembrete_evolucao`, `tb_notificacao_status`, `tb_proced_solicitado`, `tb_regulacao`, `tb_retificacao_atend`
