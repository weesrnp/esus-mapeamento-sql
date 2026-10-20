# tb_pre_natal

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_pre_natal` | `bigint` | sim | PK |
| 2 | `co_problema` | `bigint` | não | FK → tb_problema |
| 3 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 4 | `tp_gravidez` | `bigint` | não | FK → tb_tipo_gravidez |
| 5 | `dt_ultima_menstruacao` | `timestamp with time zone` | não |  |
| 6 | `dt_desfecho` | `timestamp with time zone` | não |  |
| 7 | `st_gravidez_planejada` | `integer` | não |  |
| 8 | `st_alto_risco` | `integer` | não |  |
| 9 | `co_unico_pre_natal` | `bigint` | não |  |
| 10 | `tp_fonte_idade_gestacional` | `character varying(4)` | sim |  |
