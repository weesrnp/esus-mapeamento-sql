# tb_cuidado_compartilhado

Tipo: tabela  
Grupo: outras  
Colunas: 21

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cuidado_compartilhado` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 4 | `co_lotacao_solicitante` | `bigint` | sim | FK → tb_lotacao |
| 5 | `co_prof_solicitante` | `bigint` | sim | FK → tb_prof |
| 6 | `co_equipe_solicitante` | `bigint` | não | FK → tb_equipe |
| 7 | `co_lotacao_executante_atual` | `bigint` | não | FK → tb_lotacao |
| 8 | `co_prof_executante_atual` | `bigint` | não | FK → tb_prof |
| 9 | `co_equipe_executante_atual` | `bigint` | não | FK → tb_equipe |
| 10 | `dt_inicio` | `timestamp without time zone` | sim |  |
| 11 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 12 | `co_ciap` | `bigint` | não | FK → tb_ciap |
| 13 | `co_classificcao_prioridd_atual` | `bigint` | sim | FK → tb_classificacao_prioridade_cc |
| 14 | `ds_discussao` | `text` | sim |  |
| 15 | `co_ultima_evolucao` | `bigint` | não | FK → tb_cuidado_compartilhado_evol |
| 16 | `st_cuidado_compartilhado` | `bigint` | sim | FK → tb_status_cuidado_compartilhad |
| 17 | `dt_ultima_evolucao` | `timestamp without time zone` | sim |  |
| 18 | `st_cidadao_aceita_atend_tic` | `integer` | sim |  |
| 19 | `co_unico_cuidado_compartilhado` | `character varying(44)` | sim |  |
| 20 | `co_cbo_executante_atual` | `bigint` | sim | FK → tb_cbo |
| 21 | `co_unidade_saude_exec_atual` | `bigint` | sim | FK → tb_unidade_saude |

Referenciada por: `tb_cuidado_compartilhado_evol`, `tb_cuidado_finalizacao_auto`
