# tl_cds_tipo_situacao_presente

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_cds_tipo_situacao_presente` | `bigint` | sim | PK |
| 4 | `no_cds_tipo_situacao_presente` | `character varying(255)` | não |  |
| 5 | `no_identificador` | `character varying(255)` | não |  |
