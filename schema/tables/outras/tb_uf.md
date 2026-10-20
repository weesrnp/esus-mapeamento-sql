# tb_uf

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_uf` | `bigint` | sim | PK |
| 2 | `co_pais` | `bigint` | sim | FK → tb_pais |
| 3 | `sg_uf` | `character varying(2)` | sim |  |
| 4 | `nu_dne` | `character varying(2)` | sim |  |
| 5 | `no_uf` | `character varying(72)` | sim |  |
| 6 | `no_identificador` | `character varying(2)` | sim |  |

Referenciada por: `tb_atend_prof`, `tb_cds_aval_elegibilidade`, `tb_cds_cad_domiciliar`, `tb_cds_domicilio`, `tb_cidadao`, `tb_cidadao_aldeado`, `tb_gestor_estadual`, `tb_localidade`, `tb_prof`, `tb_unidade_saude`
