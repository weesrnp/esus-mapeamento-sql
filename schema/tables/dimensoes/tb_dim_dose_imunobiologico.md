# tb_dim_dose_imunobiologico

Tipo: tabela  
Grupo: dimensoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_dose_imunobiologico` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(255)` | não |  |
| 3 | `sg_dose_imunobiologico` | `character varying(255)` | não |  |
| 4 | `no_dose_imunobiologico` | `character varying(255)` | não |  |
| 5 | `ds_filtro` | `character varying(255)` | não |  |
| 6 | `nu_ordem` | `integer` | não |  |
| 7 | `no_apresentacao_dose` | `character varying(255)` | não |  |

Referenciada por: `tb_fat_vacinacao_vacina`
