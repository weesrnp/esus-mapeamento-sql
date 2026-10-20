# tb_atend_prof_tipo_encam_intrn

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atend_prof_tipo_enc_int` | `bigint` | sim | PK |
| 2 | `co_agendado` | `bigint` | não | FK → tb_agendado |
| 3 | `co_atend` | `bigint` | não | FK → tb_atend |
| 4 | `co_lotacao` | `bigint` | não | FK → tb_lotacao |
| 5 | `tp_encam_interno` | `bigint` | sim | FK → tb_tipo_encam_interno |
| 6 | `st_agendado` | `integer` | não |  |

Referenciada por: `tb_atend_prof`
