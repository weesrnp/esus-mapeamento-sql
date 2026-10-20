# tb_dim_inep

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_inep` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(8)` | não |  |
| 3 | `no_estabelecimento` | `character varying(200)` | não |  |
| 4 | `st_registro_valido` | `integer` | não |  |

Referenciada por: `tb_fat_atividade_coletiva`
