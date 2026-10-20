# tl_parte_bucal

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_parte_bucal` | `bigint` | sim | PK |
| 4 | `tp_parte_bucal` | `character varying(60)` | não |  |
| 5 | `ds_parte_bucal` | `character varying(255)` | não |  |
