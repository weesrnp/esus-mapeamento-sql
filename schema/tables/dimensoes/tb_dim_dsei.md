# tb_dim_dsei

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_dsei` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | não |  |
| 3 | `ds_dsei` | `character varying(100)` | não |  |
| 4 | `st_registro_valido` | `integer` | não |  |

Referenciada por: `tb_dim_polo_base`
