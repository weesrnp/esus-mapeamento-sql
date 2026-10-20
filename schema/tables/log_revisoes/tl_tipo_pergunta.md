# tl_tipo_pergunta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_pergunta` | `bigint` | sim | PK |
| 2 | `ds_tipo_pergunta` | `character varying(255)` | não |  |
| 3 | `co_revisao` | `bigint` | sim | PK |
| 4 | `co_tipo_revisao` | `integer` | não |  |
