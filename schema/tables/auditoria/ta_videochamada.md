# ta_videochamada

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tavideochamada` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_videochamada` | `bigint` | não |  |
| 5 | `co_unico_videochamada` | `character varying(36)` | não |  |
| 6 | `dt_inicio` | `timestamp without time zone` | não |  |
| 7 | `dt_fim` | `timestamp without time zone` | não |  |
