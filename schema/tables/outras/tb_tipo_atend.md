# tb_tipo_atend

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_atend` | `bigint` | sim | PK |
| 2 | `no_tipo_atend` | `character varying(255)` | sim |  |
| 3 | `no_identificador` | `character varying(255)` | sim |  |

Referenciada por: `tb_atend_prof`, `tb_cds_atend_domiciliar`, `tb_cds_atend_individual`, `tb_cds_atend_odonto`
