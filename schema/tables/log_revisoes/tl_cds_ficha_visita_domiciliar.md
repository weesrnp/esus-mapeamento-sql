# tl_cds_ficha_visita_domiciliar

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ficha_visita_dom` | `bigint` | sim | PK |
| 2 | `co_unico_ficha` | `character varying(96)` | não |  |
| 3 | `dt_ficha` | `timestamp without time zone` | não |  |
| 4 | `st_ficha` | `integer` | não |  |
| 5 | `tp_cds_origem` | `bigint` | não |  |
| 6 | `co_revisao` | `bigint` | sim | PK |
| 7 | `co_tipo_revisao` | `integer` | não |  |
| 8 | `co_cds_prof` | `bigint` | não |  |
| 9 | `co_localidade_origem` | `bigint` | não |  |
| 10 | `ds_versao_ficha` | `character varying(30)` | não |  |
