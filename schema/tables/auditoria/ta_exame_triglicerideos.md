# ta_exame_triglicerideos

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taexametriglicerideos` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_exame_triglicerideos` | `bigint` | não |  |
| 5 | `co_exame_requisitado` | `bigint` | não |  |
| 6 | `vl_triglicerideos` | `double precision` | não |  |
