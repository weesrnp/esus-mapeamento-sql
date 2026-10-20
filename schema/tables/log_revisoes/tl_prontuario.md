# tl_prontuario

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_prontuario` | `bigint` | sim | PK |
| 4 | `co_unico_prontuario` | `character varying(36)` | não |  |
| 5 | `co_unico_cidadao_prontuario` | `character varying(36)` | não |  |
| 6 | `qt_referencia` | `bigint` | não |  |
| 7 | `co_prontuario_grupo` | `bigint` | não |  |
| 8 | `co_cidadao` | `bigint` | não |  |
| 9 | `st_cidadao_processado` | `integer` | não |  |
