# tl_atend_tipo_servico

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `tp_servico` | `bigint` | sim | PK |
| 4 | `co_atend` | `bigint` | sim | PK |
