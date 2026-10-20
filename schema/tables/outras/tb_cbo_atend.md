# tb_cbo_atend

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cbo` | `bigint` | sim | FK → tb_cbo |
| 2 | `qt_tempo_consulta` | `integer` | não |  |
| 3 | `co_localidade` | `bigint` | não | FK → tb_localidade |
| 4 | `co_seq_cbo_atend` | `bigint` | sim | PK |
| 5 | `st_disponivel_lotacao` | `integer` | não |  |
