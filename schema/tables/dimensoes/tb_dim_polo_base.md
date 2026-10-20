# tb_dim_polo_base

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_polo_base` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | não |  |
| 3 | `ds_polo_base` | `character varying(100)` | não |  |
| 4 | `co_dim_dsei` | `bigint` | não | FK → tb_dim_dsei |
| 5 | `st_registro_valido` | `integer` | não |  |

Referenciada por: `tb_dim_aldeia`
