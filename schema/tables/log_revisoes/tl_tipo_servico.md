# tl_tipo_servico

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_tipo_servico` | `bigint` | sim | PK |
| 4 | `no_tipo_servico` | `character varying(50)` | não |  |
| 5 | `no_tipo_servico_filtro` | `character varying(50)` | não |  |
| 6 | `st_interno` | `integer` | não |  |
| 7 | `no_identificador` | `character varying(255)` | não |  |
