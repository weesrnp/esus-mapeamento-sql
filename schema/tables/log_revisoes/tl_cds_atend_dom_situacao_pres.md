# tl_cds_atend_dom_situacao_pres

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_cds_atend_domiciliar` | `bigint` | sim | PK |
| 4 | `co_cds_situacao_presente` | `bigint` | sim | PK |
