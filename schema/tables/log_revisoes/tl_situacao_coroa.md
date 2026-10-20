# tl_situacao_coroa

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_situacao_coroa` | `bigint` | sim | PK |
| 4 | `no_situacao_coroa` | `character varying(50)` | não |  |
| 5 | `no_identificador` | `character varying(50)` | não |  |
