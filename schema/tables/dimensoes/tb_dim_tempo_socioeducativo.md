# tb_dim_tempo_socioeducativo

Tipo: tabela  
Grupo: dimensoes  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tempo_socioeducativo` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(5)` | não |  |
| 3 | `ds_tempo_socioeducativo` | `character varying(100)` | sim |  |

Referenciada por: `tb_fat_cad_individual`
