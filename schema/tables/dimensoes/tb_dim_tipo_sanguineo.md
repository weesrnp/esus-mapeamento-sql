# tb_dim_tipo_sanguineo

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_tipo_sanguineo` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(255)` | não |  |
| 3 | `no_tipo_sanguineo` | `character varying(255)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_cad_individual`
