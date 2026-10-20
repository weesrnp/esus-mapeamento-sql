# tl_tipo_exame

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_tipo_exame` | `bigint` | sim | PK |
| 4 | `no_tipo_exame` | `character varying(50)` | não |  |
| 5 | `co_sexo` | `bigint` | não |  |
| 6 | `no_identificador` | `character varying(30)` | não |  |
