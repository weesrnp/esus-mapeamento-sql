# tb_cds_ficha_vacinacao

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ficha_vacinacao` | `bigint` | sim | PK |
| 2 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 3 | `dt_ficha` | `timestamp with time zone` | não |  |
| 4 | `st_ficha` | `integer` | não |  |
| 5 | `tp_cds_origem` | `bigint` | não | FK → tb_cds_tipo_origem |
| 6 | `co_cds_prof` | `bigint` | não | FK → tb_cds_prof |
| 7 | `co_localidade_origem` | `bigint` | não | FK → tb_localidade |
| 8 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 9 | `st_cancelado` | `integer` | não |  |
| 10 | `nu_revisao` | `integer` | não |  |
| 11 | `co_unico_ficha_cancelada` | `character varying(96)` | não |  |

Referenciada por: `tb_cds_vacinacao`
