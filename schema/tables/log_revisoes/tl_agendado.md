# tl_agendado

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 22

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_agendado` | `bigint` | sim | PK |
| 4 | `dt_agendado` | `timestamp without time zone` | não |  |
| 5 | `hr_inicial_agendado` | `timestamp without time zone` | não |  |
| 6 | `ds_observacao` | `character varying(400)` | não |  |
| 7 | `st_agendado` | `bigint` | não |  |
| 8 | `tp_agendamento` | `bigint` | não |  |
| 9 | `co_lotacao_agendada` | `bigint` | não |  |
| 10 | `co_motivo_reserva` | `bigint` | não |  |
| 11 | `ds_outro_motivo_reserva` | `character varying(600)` | não |  |
| 12 | `co_origem` | `bigint` | não |  |
| 13 | `co_prontuario` | `bigint` | não |  |
| 14 | `co_lotacao_criadora` | `bigint` | não |  |
| 15 | `dt_criacao` | `timestamp with time zone` | não |  |
| 16 | `uuid_agendamento` | `character varying(36)` | não |  |
| 17 | `dt_ultima_tentativa_envio` | `timestamp with time zone` | não |  |
| 18 | `st_sincronizacao` | `character varying(48)` | não |  |
| 19 | `ds_ultima_tentativa` | `text` | não |  |
| 20 | `st_cidadao_agendamento_online` | `character varying(48)` | não |  |
| 21 | `st_fora_ubs` | `integer` | não |  |
| 22 | `co_local_atend` | `bigint` | não |  |
