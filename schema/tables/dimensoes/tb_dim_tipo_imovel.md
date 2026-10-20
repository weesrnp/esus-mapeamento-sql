# tb_dim_tipo_imovel

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_tipo_imovel` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_tipo_imovel` | `character varying(500)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |
| 5 | `ds_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_fat_cad_domiciliar`, `tb_fat_visita_domiciliar`
