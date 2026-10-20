# tl_cds_ficha_vacinacao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cds_ficha_vacinacao` | `bigint` | sim | PK |
| 4 | `co_unico_ficha` | `character varying(96)` | não |  |
| 5 | `dt_ficha` | `timestamp with time zone` | não |  |
| 6 | `st_ficha` | `integer` | não |  |
| 7 | `tp_cds_origem` | `bigint` | não |  |
| 8 | `co_cds_prof` | `bigint` | não |  |
| 9 | `co_localidade_origem` | `bigint` | não |  |
| 10 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 11 | `st_cancelado` | `integer` | não |  |
| 12 | `nu_revisao` | `integer` | não |  |
| 13 | `co_unico_ficha_cancelada` | `character varying(96)` | não |  |
