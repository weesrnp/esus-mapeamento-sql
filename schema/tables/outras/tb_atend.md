# tb_atend

Tipo: tabela  
Grupo: outras  
Colunas: 22

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atend` | `bigint` | sim | PK |
| 2 | `dt_fim` | `timestamp without time zone` | não |  |
| 3 | `dt_inicio` | `timestamp without time zone` | sim |  |
| 4 | `qt_referencia` | `bigint` | não |  |
| 5 | `st_atend` | `bigint` | sim | FK → tb_status_atend |
| 6 | `co_agendado` | `bigint` | não | FK → tb_agendado |
| 7 | `co_responsavel` | `bigint` | não | FK → tb_ator_papel |
| 8 | `co_classificacao_risco` | `bigint` | não | FK → tb_classificacao_risco |
| 9 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 10 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |
| 11 | `co_atend_prof` | `bigint` | não | FK → tb_atend_prof |
| 13 | `dt_encaminhamento` | `timestamp without time zone` | não |  |
| 14 | `st_fechado_automaticamente` | `integer` | não |  |
| 15 | `nu_responsavel_anterior` | `bigint` | não |  |
| 16 | `co_unico_atend` | `character varying(96)` | não |  |
| 17 | `tp_local_atend` | `bigint` | não | FK → tb_local_atend |
| 18 | `st_registro_tardio` | `integer` | sim |  |
| 19 | `no_justificativa_reg_tardio` | `character varying(50)` | não |  |
| 20 | `dt_criacao_registro` | `timestamp with time zone` | não |  |
| 21 | `dt_ultima_alteracao_status` | `timestamp without time zone` | sim |  |
| 22 | `co_equipe` | `bigint` | não | FK → tb_equipe |
| 23 | `st_atend_revisao` | `bigint` | não | FK → tb_status_revisao_atend |

Referenciada por: `rl_atend_tipo_servico`, `tb_atend_prof`, `tb_atend_prof_tipo_encam_intrn`, `tb_chamada_painel`
