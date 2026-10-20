# tb_dim_tipo_situacao_moradia

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_tipo_situacao_morad` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_tipo_situacao_moradia` | `character varying(500)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_cad_domiciliar`
