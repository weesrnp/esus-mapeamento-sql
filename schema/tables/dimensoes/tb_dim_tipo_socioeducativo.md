# tb_dim_tipo_socioeducativo

Tipo: tabela  
Grupo: dimensoes  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tipo_socioeducativo` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(5)` | não |  |
| 3 | `ds_tipo_socioeducativo` | `character varying(100)` | sim |  |

Referenciada por: `tb_fat_cad_individual`
