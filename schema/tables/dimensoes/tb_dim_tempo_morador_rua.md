# tb_dim_tempo_morador_rua

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_tempo_morador_rua` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_dim_tempo_morador_rua` | `character varying(500)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_cad_individual`
