# tb_cds_tipo_cuidador

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_tipo_cuidador` | `bigint` | sim | PK |
| 2 | `no_cds_tipo_cuidador` | `character varying(255)` | sim |  |
| 3 | `no_identificador` | `character varying(255)` | sim |  |

Referenciada por: `tb_atend_prof_ad`, `tb_cds_aval_elegibilidade`, `tb_cidadao`
