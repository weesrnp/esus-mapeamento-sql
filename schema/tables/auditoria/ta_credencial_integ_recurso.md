# ta_credencial_integ_recurso

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacredencialintegrecurs` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_credencl_integ_recurso` | `bigint` | não |  |
| 5 | `co_credencial_integracao` | `bigint` | não |  |
| 6 | `co_recurso` | `bigint` | não |  |
