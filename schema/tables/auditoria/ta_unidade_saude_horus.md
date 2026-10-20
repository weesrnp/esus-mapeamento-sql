# ta_unidade_saude_horus

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taunidadesaudehorus` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_unidade_saude` | `bigint` | não |  |
| 5 | `co_unidade_saude_horus` | `bigint` | não |  |
| 6 | `co_seq_unidade_saude_horus` | `bigint` | não |  |
