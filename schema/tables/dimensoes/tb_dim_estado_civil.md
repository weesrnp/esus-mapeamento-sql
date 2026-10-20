# tb_dim_estado_civil

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_estado_civil` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(255)` | não |  |
| 3 | `no_estado_civil` | `character varying(255)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_cad_individual`
