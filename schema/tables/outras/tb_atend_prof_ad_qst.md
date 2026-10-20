# tb_atend_prof_ad_qst

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atend_prof_ad_qst` | `bigint` | sim | PK |
| 2 | `ds_atend_prof_ad_qst` | `character varying(100)` | não |  |
| 3 | `st_atend_prof_ad_qst` | `integer` | não |  |
| 4 | `nu_ordem` | `integer` | não |  |
| 5 | `co_atend_prof_ad` | `bigint` | não | FK → tb_atend_prof_ad |
| 6 | `co_situacao_presente` | `bigint` | não |  |
