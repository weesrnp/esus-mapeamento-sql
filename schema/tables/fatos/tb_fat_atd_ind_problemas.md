# tb_fat_atd_ind_problemas

Tipo: tabela  
Grupo: fatos  
Colunas: 30

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atend_ind_problemas` | `bigint` | sim | PK |
| 2 | `co_fat_atd_ind` | `bigint` | não |  |
| 3 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 4 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 5 | `co_dim_profissional_1` | `bigint` | não | FK → tb_dim_profissional |
| 6 | `co_dim_profissional_2` | `bigint` | não | FK → tb_dim_profissional |
| 7 | `co_dim_cbo_1` | `bigint` | não | FK → tb_dim_cbo |
| 8 | `co_dim_cbo_2` | `bigint` | não | FK → tb_dim_cbo |
| 9 | `co_dim_unidade_saude_1` | `bigint` | não | FK → tb_dim_unidade_saude |
| 10 | `co_dim_unidade_saude_2` | `bigint` | não | FK → tb_dim_unidade_saude |
| 11 | `co_dim_equipe_1` | `bigint` | não | FK → tb_dim_equipe |
| 12 | `co_dim_equipe_2` | `bigint` | não | FK → tb_dim_equipe |
| 13 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 14 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 15 | `nu_atendimento` | `integer` | não |  |
| 16 | `nu_cns` | `character(15)` | não |  |
| 17 | `co_dim_cid` | `bigint` | não | FK → tb_dim_cid |
| 18 | `co_dim_ciap` | `bigint` | não | FK → tb_dim_ciap |
| 19 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 20 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 21 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 22 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 23 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 24 | `nu_uuid_problema` | `character varying(44)` | não |  |
| 25 | `co_unico_evolucao` | `character varying(44)` | não |  |
| 26 | `co_sequencial_evolucao` | `bigint` | não |  |
| 27 | `co_dim_situacao_problema` | `bigint` | não | FK → tb_dim_situacao_problema |
| 28 | `co_dim_data_inicio_problema` | `bigint` | não | FK → tb_dim_tempo |
| 29 | `co_dim_data_fim_problema` | `bigint` | não | FK → tb_dim_tempo |
| 30 | `st_avaliado` | `numeric(1,0)` | não |  |
