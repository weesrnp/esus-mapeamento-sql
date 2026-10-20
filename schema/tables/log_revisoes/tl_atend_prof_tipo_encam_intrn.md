# tl_atend_prof_tipo_encam_intrn

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_atend_prof_tipo_enc_int` | `bigint` | sim | PK |
| 4 | `co_agendado` | `bigint` | não |  |
| 5 | `co_atend` | `bigint` | não |  |
| 6 | `co_lotacao` | `bigint` | não |  |
| 7 | `tp_encam_interno` | `bigint` | não |  |
| 8 | `st_agendado` | `integer` | não |  |
