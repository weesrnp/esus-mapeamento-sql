# ta_exame_prenatal

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taexameprenatal` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_exame_prenatal` | `bigint` | não |  |
| 5 | `co_exame_requisitado` | `bigint` | não |  |
| 6 | `qt_semana_gestacional_eco` | `integer` | não |  |
| 7 | `qt_dia_gestacional_eco` | `integer` | não |  |
| 8 | `dt_provavel_parto_eco` | `date` | não |  |
