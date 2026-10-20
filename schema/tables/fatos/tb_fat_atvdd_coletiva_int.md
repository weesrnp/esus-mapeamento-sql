# tb_fat_atvdd_coletiva_int

Tipo: tabela  
Grupo: fatos  
Colunas: 41

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atvdd_cltv_int` | `bigint` | sim | PK |
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
| 12 | `co_dim_tipo_atividade` | `bigint` | não | FK → tb_dim_tipo_atividade |
| 13 | `st_tema_reuniao_quest_adm_func` | `integer` | não |  |
| 14 | `st_tema_reuniao_processo_traba` | `integer` | não |  |
| 15 | `st_tema_reuniao_diag_monit_ter` | `integer` | não |  |
| 16 | `st_tema_reuniao_plan_monit_equ` | `integer` | não |  |
| 17 | `st_tema_reuniao_disc_proj_tera` | `integer` | não |  |
| 18 | `st_tema_reuniao_educa_permanen` | `integer` | não |  |
| 19 | `st_tema_reuniao_outros` | `integer` | não |  |
| 20 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 21 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 22 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 23 | `st_tema_saude_comb_aedes_aegyp` | `integer` | não |  |
| 24 | `st_tema_saude_agravos_negligen` | `integer` | não |  |
| 25 | `st_tema_saude_aliment_saudavel` | `integer` | não |  |
| 26 | `st_tema_saude_pess_doenc_croni` | `integer` | não |  |
| 27 | `st_tema_saude_cidad_dirt_human` | `integer` | não |  |
| 28 | `st_tema_saude_dependen_quimica` | `integer` | não |  |
| 29 | `st_tema_saude_envelhecimento` | `integer` | não |  |
| 30 | `st_tema_saude_pant_medic_fitot` | `integer` | não |  |
| 31 | `st_tema_saude_preven_violencia` | `integer` | não |  |
| 32 | `st_tema_saude_saude_ambiental` | `integer` | não |  |
| 33 | `st_tema_saude_saude_bucal` | `integer` | não |  |
| 34 | `st_tema_saude_saude_trabalhad` | `integer` | não |  |
| 35 | `st_tema_saude_saude_mental` | `integer` | não |  |
| 36 | `st_tema_saude_saude_sex_repro` | `integer` | não |  |
| 37 | `st_tema_saude_seman_saud_esco` | `integer` | não |  |
| 38 | `st_tema_saude_amamentacao` | `integer` | não |  |
| 39 | `st_tema_saude_intro_alimentar` | `integer` | não |  |
| 40 | `st_tema_saude_outros` | `integer` | não |  |
| 41 | `st_tema_reuniao_vig_em_saude` | `integer` | não |  |
