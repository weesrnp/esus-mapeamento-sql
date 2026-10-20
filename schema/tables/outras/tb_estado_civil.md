# tb_estado_civil

Tipo: tabela  
Grupo: outras  
Colunas: 2

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_estado_civil` | `bigint` | sim | PK |
| 2 | `no_estado_civil` | `character varying(255)` | não |  |

Referenciada por: `tb_cds_cad_individual`, `tb_cidadao`
