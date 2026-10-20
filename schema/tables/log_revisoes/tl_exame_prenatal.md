# tl_exame_prenatal

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_exame_prenatal` | `bigint` | sim | PK |
| 4 | `co_exame_requisitado` | `bigint` | não |  |
| 5 | `qt_semana_gestacional_eco` | `integer` | não |  |
| 6 | `qt_dia_gestacional_eco` | `integer` | não |  |
| 7 | `dt_provavel_parto_eco` | `date` | não |  |
