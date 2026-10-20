# tl_tipo_consulta_odnt_prc_auto

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_proced_automatico` | `bigint` | sim | PK |
| 4 | `tp_consulta_odonto` | `bigint` | sim | PK |
