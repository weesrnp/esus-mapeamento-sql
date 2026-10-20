# tb_dim_imunobiologico

Tipo: tabela  
Grupo: dimensoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_imunobiologico` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(255)` | não |  |
| 3 | `sg_imunobiologico` | `character varying(255)` | não |  |
| 4 | `no_imunobiologico` | `character varying(255)` | não |  |
| 5 | `ds_filtro` | `character varying(255)` | não |  |
| 6 | `st_registro_valido` | `integer` | não |  |

Referenciada por: `tb_fat_vacinacao_vacina`
