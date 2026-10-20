# tb_fat_fichas

Tipo: tabela  
Grupo: fatos  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_fichas` | `bigint` | sim | PK |
| 2 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 3 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 4 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 5 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 6 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 7 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 8 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 9 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 10 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
