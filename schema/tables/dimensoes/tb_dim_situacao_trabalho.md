# tb_dim_situacao_trabalho

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_situacao_trabalho` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_dim_situacao_trabalho` | `character varying(500)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |
| 5 | `ds_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_fat_cad_individual`
