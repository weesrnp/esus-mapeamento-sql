# tl_evolucao_avaliacao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_atend_prof` | `bigint` | sim | PK |
| 4 | `ds_avaliacao` | `text` | não |  |
| 5 | `st_necessidade_de_protese` | `integer` | não |  |
