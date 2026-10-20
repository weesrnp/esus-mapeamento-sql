# tl_ad_questao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ad_questao` | `bigint` | sim | PK |
| 2 | `ds_ad_questao` | `character varying(255)` | não |  |
| 3 | `co_ad_cidadao` | `bigint` | não |  |
| 4 | `st_ad_questao` | `bigint` | não |  |
| 5 | `co_revisao` | `bigint` | sim | PK |
| 6 | `co_tipo_revisao` | `integer` | não |  |
| 7 | `nu_ordem` | `integer` | não |  |
| 8 | `co_situacao_presente` | `bigint` | não |  |
| 9 | `co_unico_ad_questao` | `bigint` | não |  |
