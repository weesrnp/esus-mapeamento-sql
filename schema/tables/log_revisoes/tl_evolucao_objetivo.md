# tl_evolucao_objetivo

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_atend_prof` | `bigint` | sim | PK |
| 4 | `ds_objetivo` | `text` | não |  |
| 5 | `st_necessidade_especial` | `integer` | não |  |
