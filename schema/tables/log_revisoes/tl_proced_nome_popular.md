# tl_proced_nome_popular

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_proced_nome_popular` | `bigint` | sim | PK |
| 4 | `co_proced` | `bigint` | não |  |
| 5 | `no_popular` | `character varying(255)` | não |  |
| 6 | `no_sinonimos` | `character varying(255)` | não |  |
