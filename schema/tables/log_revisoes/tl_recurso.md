# tl_recurso

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_recurso` | `bigint` | sim | PK |
| 2 | `ds_caminho` | `character varying(1000)` | não |  |
| 3 | `no_recurso` | `character varying(1000)` | não |  |
| 4 | `co_revisao` | `bigint` | sim | PK |
| 5 | `co_tipo_revisao` | `integer` | não |  |
