# tb_dim_nacionalidade

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_nacionalidade` | `bigint` | sim | PK |
| 2 | `co_nacionalidade` | `character varying(2)` | não |  |
| 3 | `no_identificador` | `character varying(100)` | não |  |
| 4 | `ds_nacionalidade` | `character varying(100)` | não |  |
| 5 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_avaliacao_elegibilidade`, `tb_fat_cad_individual`
