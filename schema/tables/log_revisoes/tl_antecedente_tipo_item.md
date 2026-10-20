# tl_antecedente_tipo_item

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_antecedente_tipo_item` | `bigint` | sim | PK |
| 4 | `no_antecedente_tipo_item` | `character varying(255)` | não |  |
| 5 | `no_identificador` | `character varying(255)` | não |  |
