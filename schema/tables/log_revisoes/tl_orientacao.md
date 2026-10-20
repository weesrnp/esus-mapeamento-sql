# tl_orientacao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_orientacao` | `bigint` | sim | PK |
| 4 | `ds_orientacao` | `text` | não |  |
| 5 | `st_orientacao_finalizada` | `integer` | não |  |
| 6 | `co_atend_prof` | `bigint` | não |  |
| 7 | `co_prontuario` | `bigint` | não |  |
