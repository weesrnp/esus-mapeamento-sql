# ta_neuro_fator_risco

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taneurofatorrisco` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_neuro_fator_risco` | `bigint` | não |  |
| 5 | `co_fator_risco_detalhe` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `co_ultimo_fator_risco_evolucao` | `bigint` | não |  |
| 8 | `co_unico_fator_risco` | `bigint` | não |  |
