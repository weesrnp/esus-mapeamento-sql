# tb_fat_atvdd_coletiva_propart

Tipo: tabela  
Grupo: fatos  
Colunas: 16

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atvdd_cltv_propart` | `bigint` | sim | PK |
| 2 | `co_fat_atividade_coletiva` | `bigint` | não |  |
| 3 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 4 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 5 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 6 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 7 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 8 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 9 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 10 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 11 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 12 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 13 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 14 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 15 | `co_dim_profssinal_participante` | `bigint` | não | FK → tb_dim_profissional |
| 16 | `co_dim_cbo_participante` | `bigint` | não | FK → tb_dim_cbo |
