# ta_medicamento

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tamedicamento` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_medicamento` | `bigint` | não |  |
| 5 | `no_principio_ativo` | `character varying(400)` | não |  |
| 6 | `ds_concentracao` | `character varying(200)` | não |  |
| 7 | `co_forma_farmaceutica` | `bigint` | não |  |
| 8 | `ds_unidade_fornecimento` | `character varying(200)` | não |  |
| 9 | `no_principio_ativo_filtro` | `character varying(600)` | não |  |
