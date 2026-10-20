# ta_risco

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tarisco` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_risco` | `bigint` | não |  |
| 5 | `co_prontuario` | `bigint` | não |  |
| 6 | `co_tipo_risco` | `bigint` | não |  |
| 7 | `co_ultima_evolucao` | `bigint` | não |  |
| 8 | `co_unico_risco` | `bigint` | não |  |
