# tb_exame_prenatal

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_exame_prenatal` | `bigint` | sim | PK |
| 2 | `co_exame_requisitado` | `bigint` | não | FK → tb_exame_requisitado |
| 3 | `qt_semana_gestacional_eco` | `integer` | não |  |
| 4 | `qt_dia_gestacional_eco` | `integer` | não |  |
| 5 | `dt_provavel_parto_eco` | `date` | não |  |
