# ta_cbo_atend

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacboatend` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_cbo` | `bigint` | não |  |
| 5 | `qt_tempo_consulta` | `integer` | não |  |
| 6 | `co_localidade` | `bigint` | não |  |
| 7 | `co_seq_cbo_atend` | `bigint` | não |  |
| 8 | `st_disponivel_lotacao` | `integer` | não |  |
