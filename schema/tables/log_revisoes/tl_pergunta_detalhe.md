# tl_pergunta_detalhe

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_pergunta` | `bigint` | não |  |
| 2 | `co_pergunta_detalhe` | `bigint` | sim | PK |
| 3 | `ds_local` | `character varying(10)` | não |  |
| 4 | `ds_pergunta_detalhe` | `character varying(255)` | não |  |
| 5 | `co_revisao` | `bigint` | sim | PK |
| 6 | `co_tipo_revisao` | `integer` | não |  |
| 7 | `no_identificador` | `character varying(255)` | não |  |
