# tb_dim_tipo_atividade

Tipo: tabela  
Grupo: dimensoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_tipo_atividade` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_tipo_atividade` | `character varying(500)` | não |  |
| 4 | `co_categoria_tipo_atividade` | `bigint` | não |  |
| 5 | `ds_categoria_tipo_atividade` | `character varying(500)` | não |  |
| 6 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_atividade_coletiva`, `tb_fat_atvdd_coletiva_ext`, `tb_fat_atvdd_coletiva_int`, `tb_fat_atvdd_coletiva_part`
