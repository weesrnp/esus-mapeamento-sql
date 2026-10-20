# ta_tipo_servico

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tatiposervico` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_tipo_servico` | `bigint` | não |  |
| 5 | `no_tipo_servico` | `character varying(50)` | não |  |
| 6 | `no_tipo_servico_filtro` | `character varying(50)` | não |  |
| 7 | `st_interno` | `integer` | não |  |
| 8 | `co_localidade` | `bigint` | não |  |
