# tb_dim_etnia

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_etnia` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `no_etnia` | `character varying(500)` | não |  |
| 4 | `ds_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_fat_avaliacao_elegibilidade`, `tb_fat_cad_individual`
