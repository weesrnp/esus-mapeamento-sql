# tb_dim_raca_cor

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_raca_cor` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(50)` | não |  |
| 3 | `nu_ms` | `character varying(50)` | não |  |
| 4 | `ds_raca_cor` | `character varying(500)` | não |  |
| 5 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_avaliacao_elegibilidade`, `tb_fat_cad_individual`
