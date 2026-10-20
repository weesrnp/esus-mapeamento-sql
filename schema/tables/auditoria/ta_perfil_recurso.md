# ta_perfil_recurso

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taperfilrecurso` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_perfil_recurso` | `bigint` | não |  |
| 5 | `co_perfil` | `bigint` | não |  |
| 6 | `no_recurso` | `character varying(400)` | não |  |
