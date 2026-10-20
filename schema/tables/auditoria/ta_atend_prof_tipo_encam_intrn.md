# ta_atend_prof_tipo_encam_intrn

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatendproftipoencmntrn` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_atend_prof_tipo_enc_int` | `bigint` | não |  |
| 5 | `co_agendado` | `bigint` | não |  |
| 6 | `co_atend` | `bigint` | não |  |
| 7 | `co_lotacao` | `bigint` | não |  |
| 8 | `tp_encam_interno` | `bigint` | não |  |
| 9 | `st_agendado` | `integer` | não |  |
