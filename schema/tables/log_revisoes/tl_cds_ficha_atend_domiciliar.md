# tl_cds_ficha_atend_domiciliar

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cds_ficha_atend_dom` | `bigint` | sim | PK |
| 4 | `dt_ficha` | `timestamp with time zone` | não |  |
| 5 | `st_ficha` | `integer` | não |  |
| 6 | `tp_cds_origem` | `bigint` | não |  |
| 7 | `co_unico_ficha` | `character varying(96)` | não |  |
| 8 | `co_cds_prof_principal` | `bigint` | não |  |
| 9 | `co_localidade_origem` | `bigint` | não |  |
| 10 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 11 | `co_cds_prof_atend_comp` | `bigint` | não |  |
