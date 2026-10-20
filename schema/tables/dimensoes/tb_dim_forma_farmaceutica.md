# tb_dim_forma_farmaceutica

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_forma_farmaceutica` | `bigint` | sim | PK |
| 2 | `co_forma_farmaceutica` | `character varying(10)` | não |  |
| 3 | `no_forma_farmaceutica` | `character varying(255)` | não |  |
| 4 | `no_forma_farmaceutica_filtro` | `character varying(255)` | não |  |
| 5 | `st_registro_valido` | `integer` | não |  |

Referenciada por: `tb_dim_catmat`
