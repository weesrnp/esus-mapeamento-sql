# tl_neuro_fator_risco

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_neuro_fator_risco` | `bigint` | sim | PK |
| 4 | `co_fator_risco_detalhe` | `bigint` | não |  |
| 5 | `co_prontuario` | `bigint` | não |  |
| 6 | `co_ultimo_fator_risco_evolucao` | `bigint` | não |  |
| 7 | `co_unico_fator_risco` | `bigint` | não |  |
