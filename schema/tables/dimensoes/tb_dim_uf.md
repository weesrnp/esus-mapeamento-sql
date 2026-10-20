# tb_dim_uf

Tipo: tabela  
Grupo: dimensoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_uf` | `bigint` | sim | PK |
| 2 | `no_identificador` | `character varying(10)` | não |  |
| 3 | `no_uf` | `character varying(500)` | não |  |
| 4 | `sg_uf` | `character varying(10)` | não |  |
| 5 | `co_dim_pais` | `bigint` | não | FK → tb_dim_pais |
| 6 | `ds_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_dim_municipio`
