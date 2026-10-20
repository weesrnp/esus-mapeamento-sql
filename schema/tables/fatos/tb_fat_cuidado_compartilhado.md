# tb_fat_cuidado_compartilhado

Tipo: tabela  
Grupo: fatos  
Colunas: 41

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_cuidado_compartilhd` | `bigint` | sim | PK |
| 2 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 3 | `nu_uuid_evolucao` | `character varying(44)` | não |  |
| 4 | `co_dim_profissional_evolucao` | `bigint` | não | FK → tb_dim_profissional |
| 5 | `co_dim_cbo_evolucao` | `bigint` | não | FK → tb_dim_cbo |
| 6 | `co_dim_equipe_evolucao` | `bigint` | não | FK → tb_dim_equipe |
| 7 | `co_dim_unidade_saude_evolucao` | `bigint` | não | FK → tb_dim_unidade_saude |
| 8 | `co_dim_municipio_evolucao` | `bigint` | não | FK → tb_dim_municipio |
| 9 | `dt_evolucao` | `timestamp without time zone` | não |  |
| 10 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 11 | `dt_evolucao_anterior` | `timestamp without time zone` | não |  |
| 12 | `co_sequencial_evolucao` | `integer` | não |  |
| 13 | `co_dim_conduta_evolucao` | `bigint` | não | FK → tb_dim_conduta_cuidado |
| 14 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 15 | `nu_cns_cidadao` | `character varying(15)` | não |  |
| 16 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 17 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 18 | `co_dim_sexo_cidadao` | `bigint` | não | FK → tb_dim_sexo |
| 19 | `dt_nascimento_cidadao` | `date` | não |  |
| 20 | `co_dim_faixa_etaria` | `bigint` | não | FK → tb_dim_faixa_etaria |
| 21 | `nu_uuid_cuidado_compartilhado` | `character varying(44)` | não |  |
| 22 | `co_dim_profissional_solicitant` | `bigint` | não | FK → tb_dim_profissional |
| 23 | `co_dim_cbo_solicitante` | `bigint` | não | FK → tb_dim_cbo |
| 24 | `co_dim_equipe_solicitante` | `bigint` | não | FK → tb_dim_equipe |
| 25 | `co_dim_unidade_saude_solicitnt` | `bigint` | não | FK → tb_dim_unidade_saude |
| 26 | `co_dim_municipio_solicitante` | `bigint` | não | FK → tb_dim_municipio |
| 27 | `co_dim_profissional_executante` | `bigint` | não | FK → tb_dim_profissional |
| 28 | `co_dim_cbo_executante` | `bigint` | não | FK → tb_dim_cbo |
| 29 | `co_dim_equipe_executante` | `bigint` | não | FK → tb_dim_equipe |
| 30 | `co_dim_unidade_saude_executant` | `bigint` | não | FK → tb_dim_unidade_saude |
| 31 | `co_dim_municipio_executante` | `bigint` | não | FK → tb_dim_municipio |
| 32 | `dt_criacao_cuidado` | `timestamp without time zone` | não |  |
| 33 | `co_dim_cid` | `bigint` | não | FK → tb_dim_cid |
| 34 | `co_dim_ciap` | `bigint` | não | FK → tb_dim_ciap |
| 35 | `nu_uuid_ficha_origem` | `character varying(44)` | não |  |
| 36 | `tp_dado_transp_ficha_origem` | `bigint` | não |  |
| 37 | `co_dim_prioridade_cuidado` | `integer` | não | FK → tb_dim_prioridade_cuidado |
| 38 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 39 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 40 | `st_executante` | `integer` | não |  |
| 41 | `co_dim_prioridade_cc_reclssfcc` | `integer` | não | FK → tb_dim_prioridade_cuidado |
