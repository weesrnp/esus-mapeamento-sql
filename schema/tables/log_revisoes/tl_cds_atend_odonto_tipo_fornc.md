# tl_cds_atend_odonto_tipo_fornc

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_atend_odonto` | `bigint` | sim | PK |
| 2 | `tp_fornecimento_odonto` | `bigint` | sim | PK |
| 3 | `co_revisao` | `bigint` | sim | PK |
| 4 | `co_tipo_revisao` | `integer` | não |  |
