# tl_vacinacao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_vacinacao` | `bigint` | sim | PK |
| 4 | `st_gestante` | `integer` | não |  |
| 5 | `st_puerpera` | `integer` | não |  |
| 6 | `st_viajante` | `integer` | não |  |
| 7 | `st_comunicante_hanseniase` | `integer` | não |  |
| 8 | `co_atend_prof` | `bigint` | não |  |
| 9 | `co_prontuario` | `bigint` | não |  |
