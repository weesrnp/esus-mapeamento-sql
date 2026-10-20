# tl_ator_papel

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_ator_papel` | `bigint` | sim | PK |
| 4 | `co_ator` | `bigint` | não |  |
| 5 | `qt_referencia` | `bigint` | não |  |
| 6 | `no_tipo_ator_papel` | `character varying(100)` | não |  |
| 7 | `tp_perfil` | `bigint` | não |  |
