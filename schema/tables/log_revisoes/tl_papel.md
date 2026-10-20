# tl_papel

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_ator_papel` | `bigint` | não |  |
| 2 | `co_localidade` | `bigint` | não |  |
| 3 | `co_lotacao` | `bigint` | não |  |
| 4 | `co_seq_papel` | `bigint` | sim | PK |
| 5 | `co_uf` | `bigint` | não |  |
| 6 | `no_descricao` | `character varying(270)` | não |  |
| 7 | `no_descricao_grupo` | `character varying(255)` | não |  |
| 8 | `st_ativo` | `integer` | não |  |
| 9 | `co_revisao` | `bigint` | sim | PK |
| 10 | `co_tipo_revisao` | `integer` | não |  |
