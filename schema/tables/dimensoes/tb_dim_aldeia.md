# tb_dim_aldeia

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_aldeia` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | não |  |
| 3 | `ds_aldeia` | `character varying(100)` | não |  |
| 4 | `co_dim_polo_base` | `bigint` | não | FK → tb_dim_polo_base |
| 5 | `st_registro_valido` | `integer` | não |  |

Referenciada por: `tb_fat_cad_domiciliar`
