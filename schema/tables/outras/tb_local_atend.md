# tb_local_atend

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_local_atend` | `bigint` | sim | PK |
| 2 | `no_local_atend` | `character varying(255)` | não |  |
| 3 | `no_local_atend_filtro` | `character varying(100)` | não |  |
| 4 | `st_local_cds` | `integer` | não |  |
| 5 | `st_local_ad` | `integer` | não |  |
| 6 | `ds_local_atend_exibicao` | `character varying(100)` | não |  |

Referenciada por: `tb_agendado`, `tb_atend`, `tb_cds_atend_domiciliar`, `tb_cds_atend_individual`, `tb_cds_atend_odonto`, `tb_cds_ficha_consumo_alimentar`, `tb_cds_proced`, `tb_cds_vacinacao`
