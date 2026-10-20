# ta_agendado

Tipo: tabela  
Grupo: auditoria  
Colunas: 26

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taagendado` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_agendado` | `bigint` | não |  |
| 5 | `dt_agendado` | `timestamp without time zone` | não |  |
| 6 | `hr_inicial_agendado` | `timestamp without time zone` | não |  |
| 7 | `ds_observacao` | `character varying(400)` | não |  |
| 8 | `st_agendado` | `bigint` | não |  |
| 9 | `co_lotacao_agendada` | `bigint` | não |  |
| 10 | `co_motivo_reserva` | `bigint` | não |  |
| 11 | `ds_outro_motivo_reserva` | `character varying(600)` | não |  |
| 12 | `co_origem` | `bigint` | não |  |
| 13 | `co_prontuario` | `bigint` | não |  |
| 14 | `co_ator_papel_criador` | `bigint` | não |  |
| 15 | `dt_criacao` | `timestamp with time zone` | não |  |
| 16 | `uuid_agendamento` | `character varying(36)` | não |  |
| 17 | `dt_ultima_tentativa_envio` | `timestamp with time zone` | não |  |
| 18 | `st_sincronizacao` | `character varying(48)` | não |  |
| 19 | `ds_ultima_tentativa` | `text` | não |  |
| 20 | `st_cidadao_agendamento_online` | `character varying(48)` | não |  |
| 21 | `st_fora_ubs` | `integer` | não |  |
| 22 | `co_local_atend` | `bigint` | não |  |
| 23 | `tp_agendamento` | `integer` | não |  |
| 24 | `st_suprime_notificacao_agonl` | `integer` | não |  |
| 25 | `st_enviou_email_cidadao` | `integer` | não |  |
| 26 | `hr_final_agendado` | `timestamp without time zone` | não |  |
