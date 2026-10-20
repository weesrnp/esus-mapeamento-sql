# tb_fat_atvdd_coletiva_ext

Tipo: tabela  
Grupo: fatos  
Colunas: 69

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atvdd_cltv_ext` | `bigint` | sim | PK |
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
| 13 | `st_pblc_alvo_comunidade_geral` | `integer` | não |  |
| 14 | `st_pblc_alvo_crianca_0_3_anos` | `integer` | não |  |
| 15 | `st_pblc_alvo_crianca_4_5_anos` | `integer` | não |  |
| 16 | `st_pblc_alvo_crianca_6_11_anos` | `integer` | não |  |
| 17 | `st_pblc_alvo_adolescente` | `integer` | não |  |
| 18 | `st_pblc_alvo_mulher` | `integer` | não |  |
| 19 | `st_pblc_alvo_gestante` | `integer` | não |  |
| 20 | `st_pblc_alvo_homem` | `integer` | não |  |
| 21 | `st_pblc_alvo_familiares` | `integer` | não |  |
| 22 | `st_pblc_alvo_idoso` | `integer` | não |  |
| 23 | `st_pblc_alvo_pessoa_doen_croni` | `integer` | não |  |
| 24 | `st_pblc_alvo_usuario_tabaco` | `integer` | não |  |
| 25 | `st_pblc_alvo_usuario_alcool` | `integer` | não |  |
| 26 | `st_pblc_alvo_usuario_outr_drog` | `integer` | não |  |
| 27 | `st_pblc_alvo_pes_sofr_trtm_men` | `integer` | não |  |
| 28 | `st_pblc_alvo_profiss_educacao` | `integer` | não |  |
| 29 | `st_pblc_alvo_outros` | `integer` | não |  |
| 30 | `st_tema_saude_comb_aedes_aegyp` | `integer` | não |  |
| 31 | `st_tema_saude_agravos_negligen` | `integer` | não |  |
| 32 | `st_tema_saude_aliment_saudavel` | `integer` | não |  |
| 33 | `st_tema_saude_pess_doenc_croni` | `integer` | não |  |
| 34 | `st_tema_saude_cidad_dirt_human` | `integer` | não |  |
| 35 | `st_tema_saude_dependen_quimica` | `integer` | não |  |
| 36 | `st_tema_saude_envelhecimento` | `integer` | não |  |
| 37 | `st_tema_saude_pant_medic_fitot` | `integer` | não |  |
| 38 | `st_tema_saude_preven_violencia` | `integer` | não |  |
| 39 | `st_tema_saude_saude_ambiental` | `integer` | não |  |
| 40 | `st_tema_saude_saude_bucal` | `integer` | não |  |
| 41 | `st_tema_saude_saude_trabalhad` | `integer` | não |  |
| 42 | `st_tema_saude_saude_mental` | `integer` | não |  |
| 43 | `st_tema_saude_saude_sex_repro` | `integer` | não |  |
| 44 | `st_tema_saude_seman_saud_esco` | `integer` | não |  |
| 45 | `st_tema_saude_outros` | `integer` | não |  |
| 46 | `st_prat_saude_antropometria` | `integer` | não |  |
| 47 | `st_prat_saude_aplic_topi_fluor` | `integer` | não |  |
| 48 | `st_prat_saude_desenv_linguagem` | `integer` | não |  |
| 49 | `st_prat_saude_escov_supervisio` | `integer` | não |  |
| 50 | `st_prat_saude_prt_corp_atv_fis` | `integer` | não |  |
| 51 | `st_prat_saude_pnct_1` | `integer` | não |  |
| 52 | `st_prat_saude_pnct_2` | `integer` | não |  |
| 53 | `st_prat_saude_pnct_3` | `integer` | não |  |
| 54 | `st_prat_saude_pnct_4` | `integer` | não |  |
| 55 | `st_prat_saude_saude_auditiva` | `integer` | não |  |
| 56 | `st_prat_saude_saude_ocular` | `integer` | não |  |
| 57 | `st_prat_saude_situacao_vacinal` | `integer` | não |  |
| 58 | `st_prat_saude_outras` | `integer` | não |  |
| 59 | `st_prat_saude_outro_procedimen` | `integer` | não |  |
| 60 | `co_dim_procedimento` | `bigint` | não | FK → tb_dim_procedimento |
| 61 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 62 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 63 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 64 | `st_tema_saude_amamentacao` | `integer` | não |  |
| 65 | `st_tema_saude_intro_alimentar` | `integer` | não |  |
| 66 | `st_pblc_alvo_adol_socioed_aber` | `integer` | não |  |
| 67 | `st_pblc_alvo_adol_socioed_fech` | `integer` | não |  |
| 68 | `st_prat_saude_fornec_kit_bucal` | `integer` | não |  |
| 69 | `st_prat_saude_pnct_manutencao` | `integer` | não |  |
