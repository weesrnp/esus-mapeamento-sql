# tb_regra_vacinal_dose

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_regra_vacinal_dose` | `bigint` | sim | PK |
| 2 | `co_imunobiologico` | `bigint` | não | FK → tb_imunobiologico |
| 3 | `co_dose_imunobiologico` | `bigint` | não | FK → tb_dose_imunobiologico |
| 4 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 5 | `st_gestante` | `integer` | não |  |
| 6 | `st_comunicante_hanseniase` | `integer` | não |  |
