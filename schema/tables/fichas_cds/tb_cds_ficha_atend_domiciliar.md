# tb_cds_ficha_atend_domiciliar

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ficha_atend_dom` | `bigint` | sim | PK |
| 2 | `dt_ficha` | `timestamp with time zone` | não |  |
| 3 | `st_ficha` | `integer` | não |  |
| 4 | `tp_cds_origem` | `bigint` | não |  |
| 5 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 6 | `co_cds_prof_principal` | `bigint` | não | FK → tb_cds_prof |
| 7 | `co_localidade_origem` | `bigint` | não | FK → tb_localidade |
| 8 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 9 | `co_cds_prof_atend_comp` | `bigint` | não | FK → tb_cds_prof |

Referenciada por: `tb_cds_atend_domiciliar`
