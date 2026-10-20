# ta_periodo_ausencia

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taperiodoausencia` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_periodo_ausencia` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `dt_ausencia` | `date` | não |  |
| 7 | `dt_retorno` | `date` | não |  |
