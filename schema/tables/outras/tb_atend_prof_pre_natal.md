# tb_atend_prof_pre_natal

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_atend_prof_pre_natal` | `bigint` | sim | PK |
| 2 | `co_unico_pre_natal` | `bigint` | não |  |
| 3 | `tp_edema` | `bigint` | não | FK → tb_tipo_edema |
| 4 | `st_gravidez_planejada` | `integer` | não |  |
| 5 | `st_movimentacao_fetal` | `integer` | não |  |
