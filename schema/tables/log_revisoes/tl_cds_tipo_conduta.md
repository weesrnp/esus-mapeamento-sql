# tl_cds_tipo_conduta

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_tipo_conduta` | `bigint` | sim | PK |
| 2 | `no_cds_tipo_conduta` | `character varying(255)` | não |  |
| 3 | `co_revisao` | `bigint` | sim | PK |
| 4 | `co_tipo_revisao` | `integer` | não |  |
| 5 | `no_identificador` | `character varying(255)` | não |  |
