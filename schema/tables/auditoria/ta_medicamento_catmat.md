# ta_medicamento_catmat

Tipo: tabela  
Grupo: auditoria  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tamedicamentocatmat` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_medicamento_catmat` | `bigint` | não |  |
| 5 | `st_ativo` | `integer` | não |  |
| 6 | `co_principio_ativo` | `bigint` | não |  |
| 7 | `co_unidade_fornecimento` | `bigint` | não |  |
| 8 | `co_catmat` | `character varying(20)` | não |  |
| 9 | `ds_volume` | `character varying(100)` | não |  |
| 10 | `co_medicamento` | `bigint` | não |  |
| 11 | `nu_frequencia_instalacao` | `integer` | não |  |
| 12 | `co_rename` | `character varying(28)` | não |  |
| 13 | `no_medicamento_filtro` | `character varying(600)` | não |  |
