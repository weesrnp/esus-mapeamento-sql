# tb_fat_atend_dom_prob_cond

Tipo: tabela  
Grupo: fatos  
Colunas: 28

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atend_dom_prob_cond` | `bigint` | sim | PK |
| 2 | `co_fat_atend_domiciliar` | `bigint` | não |  |
| 3 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 4 | `nu_atendimento` | `integer` | não |  |
| 5 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 6 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 7 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 8 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 9 | `co_dim_profissional_1` | `bigint` | não | FK → tb_dim_profissional |
| 10 | `co_dim_cbo_1` | `bigint` | não | FK → tb_dim_cbo |
| 11 | `co_dim_equipe_1` | `bigint` | não | FK → tb_dim_equipe |
| 12 | `co_dim_unidade_saude_1` | `bigint` | não | FK → tb_dim_unidade_saude |
| 13 | `co_dim_profissional_2` | `bigint` | não | FK → tb_dim_profissional |
| 14 | `co_dim_cbo_2` | `bigint` | não | FK → tb_dim_cbo |
| 15 | `co_dim_equipe_2` | `bigint` | não | FK → tb_dim_equipe |
| 16 | `co_dim_unidade_saude_2` | `bigint` | não | FK → tb_dim_unidade_saude |
| 17 | `co_dim_cid` | `bigint` | não | FK → tb_dim_cid |
| 18 | `co_dim_ciap` | `bigint` | não | FK → tb_dim_ciap |
| 19 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 20 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 21 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 22 | `nu_uuid_problema` | `character varying(44)` | não |  |
| 23 | `co_unico_evolucao` | `character varying(44)` | não |  |
| 24 | `co_sequencial_evolucao` | `bigint` | não |  |
| 25 | `co_dim_situacao_problema` | `bigint` | não | FK → tb_dim_situacao_problema |
| 26 | `co_dim_data_inicio_problema` | `bigint` | não | FK → tb_dim_tempo |
| 27 | `co_dim_data_fim_problema` | `bigint` | não | FK → tb_dim_tempo |
| 28 | `st_avaliado` | `numeric(1,0)` | não |  |
