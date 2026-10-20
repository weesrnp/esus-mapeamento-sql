# tb_cds_ficha_atend_odonto

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ficha_atend_odonto` | `bigint` | sim | PK |
| 2 | `dt_ficha` | `timestamp without time zone` | não |  |
| 3 | `st_ficha` | `integer` | não |  |
| 4 | `tp_cds_origem` | `bigint` | não |  |
| 5 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 6 | `co_cds_prof` | `bigint` | sim | FK → tb_cds_prof |
| 7 | `co_localidade_origem` | `bigint` | não | FK → tb_localidade |
| 8 | `ds_versao_ficha` | `character varying(30)` | não |  |

Referenciada por: `rl_cds_ficha_atend_odonto_prof`, `tb_cds_atend_odonto`
