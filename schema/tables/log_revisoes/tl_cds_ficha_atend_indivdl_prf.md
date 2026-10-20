# tl_cds_ficha_atend_indivdl_prf

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_ficha_atend_individual` | `bigint` | sim | PK |
| 2 | `co_revisao` | `bigint` | sim | PK |
| 3 | `co_tipo_revisao` | `integer` | não |  |
| 4 | `co_cds_prof` | `bigint` | sim | PK |
