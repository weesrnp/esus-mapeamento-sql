# tb_fat_visita_domiciliar

Tipo: tabela  
Grupo: fatos  
Colunas: 76

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_visita_domiciliar` | `bigint` | sim | PK |
| 2 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 3 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 4 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 5 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 6 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 7 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 8 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 9 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 10 | `co_dim_tipo_imovel` | `bigint` | não | FK → tb_dim_tipo_imovel |
| 11 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 12 | `co_dim_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 13 | `nu_micro_area` | `character varying(3)` | não |  |
| 14 | `nu_peso` | `double precision` | não |  |
| 15 | `nu_altura` | `double precision` | não |  |
| 16 | `nu_cns` | `character(15)` | não |  |
| 17 | `dt_nascimento` | `date` | não |  |
| 18 | `co_dim_faixa_etaria` | `bigint` | não | FK → tb_dim_faixa_etaria |
| 19 | `st_visita_compartilhada` | `integer` | não |  |
| 20 | `st_mot_vis_cad_att` | `integer` | não |  |
| 21 | `st_mot_vis_visita_periodica` | `integer` | não |  |
| 22 | `st_mot_vis_busca_ativa` | `integer` | não |  |
| 23 | `st_mot_vis_acompanhamento` | `integer` | não |  |
| 24 | `st_mot_vis_egresso_internacao` | `integer` | não |  |
| 25 | `st_mot_vis_ctrl_ambnte_vetor` | `integer` | não |  |
| 26 | `st_mot_vis_convte_atvidd_cltva` | `integer` | não |  |
| 27 | `st_mot_vis_orintacao_prevncao` | `integer` | não |  |
| 28 | `st_mot_vis_outros` | `integer` | não |  |
| 29 | `st_busca_ativa_consulta` | `integer` | não |  |
| 30 | `st_busca_ativa_exame` | `integer` | não |  |
| 31 | `st_busca_ativa_vacina` | `integer` | não |  |
| 32 | `st_busca_ativa_bolsa_familia` | `integer` | não |  |
| 33 | `st_acomp_gestante` | `integer` | não |  |
| 34 | `st_acomp_puerpera` | `integer` | não |  |
| 35 | `st_acomp_recem_nascido` | `integer` | não |  |
| 36 | `st_acomp_crianca` | `integer` | não |  |
| 37 | `st_acomp_pessoa_desnutricao` | `integer` | não |  |
| 38 | `st_acomp_pessoa_reabil_deficie` | `integer` | não |  |
| 39 | `st_acomp_pessoa_hipertensao` | `integer` | não |  |
| 40 | `st_acomp_pessoa_diabetes` | `integer` | não |  |
| 41 | `st_acomp_pessoa_asma` | `integer` | não |  |
| 42 | `st_acomp_pessoa_dpoc_enfisema` | `integer` | não |  |
| 43 | `st_acomp_pessoa_cancer` | `integer` | não |  |
| 44 | `st_acomp_pessoa_doenca_cronica` | `integer` | não |  |
| 45 | `st_acomp_pessoa_hanseniase` | `integer` | não |  |
| 46 | `st_acomp_pessoa_tuberculose` | `integer` | não |  |
| 47 | `st_acomp_sintomaticos_respirat` | `integer` | não |  |
| 48 | `st_acomp_tabagista` | `integer` | não |  |
| 49 | `st_acomp_domiciliados_acamados` | `integer` | não |  |
| 50 | `st_acomp_condi_vulnerab_social` | `integer` | não |  |
| 51 | `st_acomp_condi_bolsa_familia` | `integer` | não |  |
| 52 | `st_acomp_saude_mental` | `integer` | não |  |
| 53 | `st_acomp_usuario_alcool` | `integer` | não |  |
| 54 | `st_acomp_usuario_outras_drogra` | `integer` | não |  |
| 55 | `st_ctrl_amb_vet_acao_educativa` | `integer` | não |  |
| 56 | `st_ctrl_amb_vet_imovel_foco` | `integer` | não |  |
| 57 | `st_ctrl_amb_vet_acao_mecanica` | `integer` | não |  |
| 58 | `st_ctrl_amb_vet_tratamnt_focal` | `integer` | não |  |
| 59 | `co_dim_desfecho_visita` | `bigint` | não | FK → tb_dim_desfecho_visita |
| 60 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 61 | `nu_prontuario` | `character varying(65)` | não |  |
| 62 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 63 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 64 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 65 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 66 | `co_dim_tipo_glicemia` | `bigint` | não | FK → tb_dim_tipo_glicemia |
| 67 | `nu_medicao_pressao_arterial` | `character varying(20)` | não |  |
| 68 | `nu_medicao_temperatura` | `character varying(20)` | não |  |
| 69 | `nu_medicao_glicemia` | `character varying(20)` | não |  |
| 70 | `nu_latitude` | `double precision` | não |  |
| 71 | `nu_longitude` | `double precision` | não |  |
| 72 | `co_uuid_origem_fcd` | `character varying(96)` | não |  |
| 73 | `st_processado_origem_fcd` | `integer` | não |  |
| 74 | `st_acomp_pessoa_idosa` | `integer` | não |  |
| 75 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
| 76 | `st_nao_possui_cpf` | `integer` | não |  |
