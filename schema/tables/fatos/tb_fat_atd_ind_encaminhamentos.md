# tb_fat_atd_ind_encaminhamentos

Tipo: tabela  
Grupo: fatos  
Colunas: 27

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atd_ind_encaminham` | `bigint` | sim | PK |
| 2 | `co_fat_atd_ind` | `bigint` | não | FK → tb_fat_atendimento_individual |
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
| 16 | `nu_cns_cidadao` | `character varying(15)` | não |  |
| 17 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 18 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 19 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 20 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 21 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 22 | `co_dim_especialidade` | `bigint` | não | FK → tb_dim_especialidade |
| 23 | `co_dim_cid10` | `bigint` | não | FK → tb_dim_cid |
| 24 | `co_dim_classificacao_risc_enc` | `bigint` | não | FK → tb_dim_classificacao_risc_enc |
| 25 | `co_dim_ciap2` | `bigint` | não | FK → tb_dim_ciap |
| 26 | `co_dim_cbo_guia_encaminhamento` | `bigint` | não | FK → tb_dim_cbo |
| 27 | `co_dim_classificacao_prioridad` | `bigint` | não | FK → tb_dim_prioridade_cuidado |
