# ta_animais_domicilio

Tipo: tabela  
Grupo: auditoria  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taanimaisdomicilio` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_animais_domicilio` | `bigint` | não |  |
| 5 | `co_domicilio` | `bigint` | não |  |
| 6 | `st_animais` | `integer` | não |  |
| 7 | `nu_animais` | `integer` | não |  |
| 8 | `st_gato` | `integer` | não |  |
| 9 | `st_cachorro` | `integer` | não |  |
| 10 | `st_passaro` | `integer` | não |  |
| 11 | `st_outros` | `integer` | não |  |
| 12 | `st_macaco` | `integer` | não |  |
| 13 | `st_galinha` | `integer` | não |  |
| 14 | `st_porco` | `integer` | não |  |
| 15 | `st_repteis` | `integer` | não |  |
