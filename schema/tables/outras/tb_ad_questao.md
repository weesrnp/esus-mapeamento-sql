# tb_ad_questao

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ad_questao` | `bigint` | sim | PK |
| 2 | `ds_ad_questao` | `character varying(255)` | não |  |
| 3 | `co_ad_cidadao` | `bigint` | não | FK → tb_ad_cidadao |
| 4 | `st_ad_questao` | `bigint` | não |  |
| 5 | `nu_ordem` | `integer` | não |  |
| 6 | `co_situacao_presente` | `bigint` | não |  |
| 7 | `co_unico_ad_questao` | `bigint` | não |  |
