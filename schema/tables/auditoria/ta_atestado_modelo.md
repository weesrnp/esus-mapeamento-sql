# ta_atestado_modelo

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatestadomodelo` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_atestado_modelo` | `bigint` | não |  |
| 5 | `no_modelo` | `character varying(45)` | não |  |
| 6 | `ds_modelo` | `text` | não |  |
| 7 | `co_prof` | `bigint` | não |  |
