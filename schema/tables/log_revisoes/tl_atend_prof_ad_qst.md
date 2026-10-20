# tl_atend_prof_ad_qst

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_atend_prof_ad_qst` | `bigint` | sim | PK |
| 4 | `ds_atend_prof_ad_qst` | `character varying(100)` | não |  |
| 5 | `st_atend_prof_ad_qst` | `integer` | não |  |
| 6 | `nu_ordem` | `integer` | não |  |
| 7 | `co_atend_prof_ad` | `bigint` | não |  |
| 8 | `co_situacao_presente` | `bigint` | não |  |
