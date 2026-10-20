# ta_exame_puericultura

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taexamepuericultura` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_exame` | `bigint` | não |  |
| 5 | `co_exame_requisitado` | `bigint` | não |  |
| 6 | `co_exame` | `bigint` | não |  |
