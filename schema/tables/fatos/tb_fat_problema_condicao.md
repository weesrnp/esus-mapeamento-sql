# tb_fat_problema_condicao

Tipo: tabela  
Grupo: fatos  
Colunas: 37

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_problema_condicao` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 3 | `co_fat_atendimento` | `bigint` | não |  |
| 4 | `co_tipo_fonte` | `integer` | sim |  |
| 5 | `nu_uuid_problema` | `character varying(44)` | não |  |
| 6 | `co_unico_evolucao` | `character varying(44)` | não |  |
| 7 | `co_sequencial_evolucao` | `bigint` | não |  |
| 8 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 9 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 10 | `nu_atendimento` | `integer` | não |  |
| 11 | `st_avaliado` | `numeric(1,0)` | não |  |
| 12 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 13 | `co_dim_data_inicio_problema` | `bigint` | não | FK → tb_dim_tempo |
| 14 | `co_dim_data_fim_problema` | `bigint` | não | FK → tb_dim_tempo |
| 15 | `co_dim_ciap` | `bigint` | não | FK → tb_dim_ciap |
| 16 | `co_dim_cid` | `bigint` | não | FK → tb_dim_cid |
| 17 | `co_dim_situacao_problema` | `bigint` | não | FK → tb_dim_situacao_problema |
| 18 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 19 | `co_dim_cbo_1` | `bigint` | não | FK → tb_dim_cbo |
| 20 | `co_dim_cbo_2` | `bigint` | não | FK → tb_dim_cbo |
| 21 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 22 | `co_dim_equipe_1` | `bigint` | não | FK → tb_dim_equipe |
| 23 | `co_dim_equipe_2` | `bigint` | não | FK → tb_dim_equipe |
| 24 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 25 | `co_dim_profissional_1` | `bigint` | não | FK → tb_dim_profissional |
| 26 | `co_dim_profissional_2` | `bigint` | não | FK → tb_dim_profissional |
| 27 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 28 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 29 | `co_dim_unidade_saude_1` | `bigint` | não | FK → tb_dim_unidade_saude |
| 30 | `co_dim_unidade_saude_2` | `bigint` | não | FK → tb_dim_unidade_saude |
| 31 | `nu_ciap` | `character varying(10)` | não |  |
| 32 | `nu_cid` | `character varying(10)` | não |  |
| 33 | `nu_identificador_situacao` | `character varying(20)` | não |  |
| 34 | `nu_identificador_origem` | `character varying(20)` | não |  |
| 35 | `nu_cbo` | `character varying(10)` | não |  |
| 36 | `nu_cns` | `character varying(15)` | não |  |
| 37 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
