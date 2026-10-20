# ta_pre_natal

Tipo: tabela  
Grupo: auditoria  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taprenatal` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_pre_natal` | `bigint` | não |  |
| 5 | `co_problema` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `tp_gravidez` | `bigint` | não |  |
| 8 | `dt_ultima_menstruacao` | `timestamp with time zone` | não |  |
| 9 | `dt_desfecho` | `timestamp with time zone` | não |  |
| 10 | `st_gravidez_planejada` | `integer` | não |  |
| 11 | `st_alto_risco` | `integer` | não |  |
| 12 | `co_unico_pre_natal` | `bigint` | não |  |
| 13 | `tp_fonte_idade_gestacional` | `character varying(4)` | não |  |
