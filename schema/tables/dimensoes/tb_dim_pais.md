# tb_dim_pais

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_pais` | `bigint` | sim | PK |
| 2 | `no_pais` | `character varying(500)` | não |  |
| 3 | `co_cadsus` | `character varying(6)` | não |  |
| 4 | `st_registro_valido` | `integer` | não |  |
| 5 | `ds_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_dim_uf`, `tb_fat_avaliacao_elegibilidade`, `tb_fat_cad_individual`
