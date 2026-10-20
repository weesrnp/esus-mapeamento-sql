# tl_sinan_notificacao_evolucao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_sinan_notificacao_evol` | `bigint` | sim | PK |
| 4 | `co_sinan_notificacao` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
