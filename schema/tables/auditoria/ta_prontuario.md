# ta_prontuario

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taprontuario` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_prontuario` | `bigint` | não |  |
| 5 | `qt_referencia` | `bigint` | não |  |
| 6 | `co_prontuario_grupo` | `bigint` | não |  |
| 7 | `co_cidadao` | `bigint` | não |  |
| 8 | `st_cidadao_processado` | `integer` | não |  |
