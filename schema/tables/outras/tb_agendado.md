# tb_agendado

Tipo: tabela  
Grupo: outras  
Colunas: 23

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_agendado` | `bigint` | sim | PK |
| 2 | `dt_agendado` | `timestamp without time zone` | sim |  |
| 3 | `hr_inicial_agendado` | `timestamp without time zone` | sim |  |
| 4 | `ds_observacao` | `character varying(400)` | não |  |
| 5 | `st_agendado` | `bigint` | sim | FK → tb_situacao_agendado |
| 7 | `co_lotacao_agendada` | `bigint` | não | FK → tb_lotacao |
| 8 | `co_motivo_reserva` | `bigint` | não | FK → tb_motivo_reserva |
| 9 | `ds_outro_motivo_reserva` | `character varying(600)` | não |  |
| 10 | `co_origem` | `bigint` | sim | FK → tb_origem |
| 11 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 12 | `co_ator_papel_criador` | `bigint` | não | FK → tb_ator_papel |
| 13 | `dt_criacao` | `timestamp with time zone` | não |  |
| 14 | `uuid_agendamento` | `character varying(36)` | não |  |
| 15 | `dt_ultima_tentativa_envio` | `timestamp with time zone` | não |  |
| 16 | `st_sincronizacao` | `character varying(48)` | sim |  |
| 17 | `ds_ultima_tentativa` | `text` | não |  |
| 18 | `st_cidadao_agendamento_online` | `character varying(48)` | não |  |
| 19 | `st_fora_ubs` | `integer` | sim |  |
| 20 | `co_local_atend` | `bigint` | não | FK → tb_local_atend |
| 21 | `tp_agendamento` | `integer` | não |  |
| 22 | `st_suprime_notificacao_agonl` | `integer` | não |  |
| 23 | `st_enviou_email_cidadao` | `integer` | não |  |
| 24 | `hr_final_agendado` | `timestamp without time zone` | sim |  |

Referenciada por: `tb_agend_compartilhado`, `tb_atend`, `tb_atend_prof_tipo_encam_intrn`, `tb_criador_reserva_unif_base`, `tb_cuidado_compartilhado_evol`, `tb_justificativa_agenda`
