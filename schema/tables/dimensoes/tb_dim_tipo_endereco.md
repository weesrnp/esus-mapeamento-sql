# tb_dim_tipo_endereco

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_tipo_endereco` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | sim |  |
| 3 | `ds_tipo_endereco` | `character varying(100)` | sim |  |
| 4 | `co_ordem` | `integer` | sim |  |

Referenciada por: `tb_fat_cad_domiciliar`
