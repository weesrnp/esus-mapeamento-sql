# tl_evolucao_avaliacao_ciap_cid

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_evolucao_aval_ciap_cid` | `bigint` | sim | PK |
| 4 | `co_atend_prof` | `bigint` | não |  |
| 5 | `co_ciap` | `bigint` | não |  |
| 6 | `co_cid10` | `bigint` | não |  |
| 7 | `ds_nota` | `character varying(400)` | não |  |
| 8 | `co_unico_problema` | `bigint` | não |  |
