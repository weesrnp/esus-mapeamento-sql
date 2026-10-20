# tl_antecedente_historico

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_antecedente_historico` | `bigint` | sim | PK |
| 4 | `co_atend_prof` | `bigint` | não |  |
