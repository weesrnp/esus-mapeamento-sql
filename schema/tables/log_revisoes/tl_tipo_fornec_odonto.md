# tl_tipo_fornec_odonto

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_fornec_odonto` | `bigint` | sim | PK |
| 2 | `no_tipo_fornec_odonto` | `character varying(255)` | não |  |
| 3 | `co_revisao` | `bigint` | sim | PK |
| 4 | `co_tipo_revisao` | `integer` | não |  |
| 5 | `no_identificador` | `character varying(255)` | não |  |
