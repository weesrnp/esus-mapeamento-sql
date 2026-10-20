# tb_animais_domicilio

Tipo: tabela  
Grupo: outras  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_animais_domicilio` | `bigint` | sim | PK |
| 2 | `co_domicilio` | `bigint` | não | FK → tb_cds_domicilio |
| 3 | `st_animais` | `integer` | não |  |
| 4 | `nu_animais` | `integer` | não |  |
| 5 | `st_gato` | `integer` | não |  |
| 6 | `st_cachorro` | `integer` | não |  |
| 7 | `st_passaro` | `integer` | não |  |
| 8 | `st_outros` | `integer` | não |  |
| 9 | `st_macaco` | `integer` | não |  |
| 10 | `st_galinha` | `integer` | não |  |
| 11 | `st_porco` | `integer` | não |  |
| 12 | `st_repteis` | `integer` | não |  |
