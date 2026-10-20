# tb_pais

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_pais` | `bigint` | sim | PK |
| 2 | `sg_pais_2` | `character varying(2)` | não |  |
| 3 | `sg_pais_3` | `character varying(3)` | não |  |
| 4 | `no_pais_portugues` | `character varying(72)` | sim |  |
| 5 | `no_pais_ingles` | `character varying(72)` | não |  |
| 6 | `no_pais_portugues_filtro` | `character varying(72)` | não |  |
| 7 | `co_pais_cadsus` | `character varying(3)` | não |  |
| 8 | `st_ativo` | `integer` | não |  |

Referenciada por: `tb_cds_aval_elegibilidade`, `tb_cds_cad_individual`, `tb_cidadao`, `tb_uf`
