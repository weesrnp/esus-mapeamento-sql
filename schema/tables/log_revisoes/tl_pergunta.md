# tl_pergunta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_contexto_pergunta` | `bigint` | não |  |
| 2 | `co_pergunta_pai` | `bigint` | não |  |
| 3 | `co_seq_pergunta` | `bigint` | sim | PK |
| 4 | `ds_local` | `character varying(10)` | não |  |
| 5 | `ds_pergunta` | `character varying(255)` | não |  |
| 6 | `tp_pergunta` | `bigint` | não |  |
| 7 | `co_revisao` | `bigint` | sim | PK |
| 8 | `co_tipo_revisao` | `integer` | não |  |
