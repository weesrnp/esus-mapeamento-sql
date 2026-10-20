# tb_fat_atendimento_individual

Tipo: tabela  
Grupo: fatos  
Colunas: 89

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atd_ind` | `bigint` | sim | PK |
| 2 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 3 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 4 | `co_dim_profissional_1` | `bigint` | não | FK → tb_dim_profissional |
| 5 | `co_dim_profissional_2` | `bigint` | não | FK → tb_dim_profissional |
| 6 | `co_dim_cbo_1` | `bigint` | não | FK → tb_dim_cbo |
| 7 | `co_dim_cbo_2` | `bigint` | não | FK → tb_dim_cbo |
| 8 | `co_dim_unidade_saude_1` | `bigint` | não | FK → tb_dim_unidade_saude |
| 9 | `co_dim_unidade_saude_2` | `bigint` | não | FK → tb_dim_unidade_saude |
| 10 | `co_dim_equipe_1` | `bigint` | não | FK → tb_dim_equipe |
| 11 | `co_dim_equipe_2` | `bigint` | não | FK → tb_dim_equipe |
| 12 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 13 | `co_dim_racionalidade_saude` | `bigint` | não | FK → tb_dim_racionalidade_saude |
| 14 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 15 | `nu_atendimento` | `integer` | não |  |
| 16 | `nu_cns` | `character(15)` | não |  |
| 17 | `dt_nascimento` | `date` | não |  |
| 18 | `co_dim_faixa_etaria` | `bigint` | não | FK → tb_dim_faixa_etaria |
| 19 | `co_dim_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 20 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 21 | `co_dim_local_atendimento` | `bigint` | não | FK → tb_dim_local_atendimento |
| 22 | `co_dim_tipo_atendimento` | `bigint` | não | FK → tb_dim_tipo_atendimento |
| 23 | `nu_peso` | `double precision` | não |  |
| 24 | `nu_altura` | `double precision` | não |  |
| 25 | `nu_perimetro_cefalico` | `double precision` | não |  |
| 26 | `st_vacinacao_em_dia` | `integer` | não |  |
| 27 | `co_dim_aleitamento` | `bigint` | não | FK → tb_dim_aleitamento |
| 28 | `co_dim_tempo_dum` | `bigint` | não | FK → tb_dim_tempo |
| 29 | `st_gravidez_planejada` | `integer` | não |  |
| 30 | `nu_idade_gestacional_semanas` | `integer` | não |  |
| 31 | `nu_gestas_previas` | `integer` | não |  |
| 32 | `nu_partos` | `integer` | não |  |
| 33 | `co_dim_modalidade_ad` | `bigint` | não | FK → tb_dim_modalidade_ad |
| 34 | `st_ficou_em_observacao` | `integer` | não |  |
| 35 | `st_nasf_avaliacao_diagnostico` | `integer` | não |  |
| 36 | `st_nasf_proce_clin_terapeutico` | `integer` | não |  |
| 37 | `st_nasf_prescricao_terapeutica` | `integer` | não |  |
| 38 | `st_conduta_consulta_agendada` | `integer` | não |  |
| 39 | `st_conduta_cuidd_conti_program` | `integer` | não |  |
| 40 | `st_conduta_agendamento_grupos` | `integer` | não |  |
| 41 | `st_conduta_agendamento_nasf` | `integer` | não |  |
| 42 | `st_conduta_alta_episodio` | `integer` | não |  |
| 43 | `st_encaminhamento_interno_dia` | `integer` | não |  |
| 44 | `st_encaminhamento_serv_special` | `integer` | não |  |
| 45 | `st_encaminhamento_caps` | `integer` | não |  |
| 46 | `st_encaminhamento_intern_hospi` | `integer` | não |  |
| 47 | `st_encaminhamento_urgencia` | `integer` | não |  |
| 48 | `st_encaminhamento_servico_ad` | `integer` | não |  |
| 49 | `st_encaminhamento_intersetoria` | `integer` | não |  |
| 50 | `ds_filtro_cids` | `character varying(4000)` | não |  |
| 51 | `ds_filtro_ciaps` | `character varying(4000)` | não |  |
| 52 | `ds_filtro_proced_avaliados` | `character varying(4000)` | não |  |
| 53 | `ds_filtro_proced_solicitados` | `character varying(4000)` | não |  |
| 54 | `nu_prontuario` | `character varying(65)` | não |  |
| 55 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 56 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 57 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 58 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 59 | `dt_inicial_atendimento` | `timestamp with time zone` | não |  |
| 60 | `dt_final_atendimento` | `timestamp with time zone` | não |  |
| 61 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 62 | `st_conduta_manter_observacao` | `integer` | sim |  |
| 63 | `co_dim_prof_finalizador_obs` | `bigint` | sim | FK → tb_dim_profissional |
| 64 | `co_dim_cbo_finalizador_obs` | `bigint` | sim | FK → tb_dim_cbo |
| 65 | `co_dim_ubs_finalizador_obs` | `bigint` | sim | FK → tb_dim_unidade_saude |
| 66 | `co_dim_equipe_finalizador_obs` | `bigint` | sim | FK → tb_dim_equipe |
| 67 | `co_dim_tp_particip_cidadao` | `bigint` | sim | FK → tb_dim_tipo_participacao_atend |
| 68 | `co_dim_tp_particip_prof_conv` | `bigint` | sim | FK → tb_dim_tipo_participacao_atend |
| 69 | `st_conduta_agendamento_emulti` | `integer` | não |  |
| 70 | `st_nasf` | `integer` | sim |  |
| 71 | `nu_circ_abdominal` | `numeric(6,1)` | não |  |
| 72 | `nu_perim_panturrilha` | `numeric(3,1)` | não |  |
| 73 | `nu_pressao_sistolica` | `numeric(3,0)` | não |  |
| 74 | `nu_pressao_diastolica` | `numeric(3,0)` | não |  |
| 75 | `nu_freq_respiratoria` | `numeric(3,0)` | não |  |
| 76 | `nu_freq_cardiaca` | `numeric(3,0)` | não |  |
| 77 | `nu_temperatura` | `numeric(3,1)` | não |  |
| 78 | `nu_saturacao_o2` | `numeric(3,0)` | não |  |
| 79 | `nu_glicemia` | `numeric(3,0)` | não |  |
| 80 | `co_dim_tipo_glicemia` | `bigint` | não | FK → tb_dim_tipo_glicemia |
| 81 | `st_mchat_preenchido` | `integer` | não |  |
| 82 | `nu_mchat_pontuacao` | `integer` | não |  |
| 83 | `co_mchat_risco` | `bigint` | sim |  |
| 84 | `nu_mchat_rf_pontuacao` | `integer` | não |  |
| 85 | `co_mchat_rf_risco` | `bigint` | sim |  |
| 86 | `ds_filtro_ciap_plano` | `character varying(4000)` | não |  |
| 87 | `ds_filtro_ciap_motivo_consulta` | `character varying(4000)` | não |  |
| 88 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
| 89 | `st_nao_possui_cpf` | `integer` | não |  |

Referenciada por: `tb_fat_atd_ind_encaminhamentos`
