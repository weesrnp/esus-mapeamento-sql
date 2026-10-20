# tb_fat_atendimento_odonto

Tipo: tabela  
Grupo: fatos  
Colunas: 83

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atd_odnt` | `bigint` | sim | PK |
| 2 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 3 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 4 | `co_dim_profissional_1` | `bigint` | não | FK → tb_dim_profissional |
| 5 | `co_dim_profissional_2` | `bigint` | não | FK → tb_dim_profissional |
| 6 | `co_dim_cbo_1` | `bigint` | não | FK → tb_dim_cbo |
| 7 | `co_dim_cbo_2` | `bigint` | não | FK → tb_dim_cbo |
| 8 | `co_dim_unidade_saude_1` | `bigint` | não | FK → tb_dim_unidade_saude |
| 9 | `co_dim_unidade_saude_2` | `bigint` | não | FK → tb_dim_unidade_saude |
| 10 | `co_dim_equipe_1` | `bigint` | não | FK → tb_dim_equipe |
| 11 | `co_dim_equipe_2` | `bigint` | não | FK → tb_dim_equipe |
| 12 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 13 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 14 | `nu_atendimento` | `integer` | não |  |
| 15 | `nu_cns` | `character(15)` | não |  |
| 16 | `dt_nascimento` | `date` | não |  |
| 17 | `co_dim_faixa_etaria` | `bigint` | não | FK → tb_dim_faixa_etaria |
| 18 | `co_dim_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 19 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 20 | `co_dim_local_atendimento` | `bigint` | não | FK → tb_dim_local_atendimento |
| 21 | `st_paciente_necessidades_espec` | `integer` | não |  |
| 22 | `st_gestante` | `integer` | não |  |
| 23 | `co_dim_tipo_atendimento` | `bigint` | não | FK → tb_dim_tipo_atendimento |
| 24 | `co_dim_tipo_consulta` | `bigint` | não | FK → tb_dim_tipo_consulta_odonto |
| 25 | `st_vigil_abscesso_dentoalveola` | `integer` | não |  |
| 26 | `st_vigil_alterac_tecidos_moles` | `integer` | não |  |
| 27 | `st_vigil_dor_dente` | `integer` | não |  |
| 28 | `st_vigil_fendas_fissuras_labio` | `integer` | não |  |
| 29 | `st_vigil_fluorose_dentaria` | `integer` | não |  |
| 30 | `st_vigil_traumat_dentoalveolar` | `integer` | não |  |
| 31 | `st_vigil_nao_identificado` | `integer` | não |  |
| 32 | `st_fornecimento_escova_dental` | `integer` | não |  |
| 33 | `st_fornecimento_creme_dental` | `integer` | não |  |
| 34 | `st_fornecimento_fio_dental` | `integer` | não |  |
| 35 | `st_conduta_consulta_agendada` | `integer` | não |  |
| 36 | `st_conduta_outros_profissio_ab` | `integer` | não |  |
| 37 | `st_conduta_agendamento_nasf` | `integer` | não |  |
| 38 | `st_conduta_agendamento_grupos` | `integer` | não |  |
| 39 | `st_conduta_alta_episodio` | `integer` | não |  |
| 40 | `st_conduta_tratamento_concluid` | `integer` | não |  |
| 41 | `st_encaminhamento_necess_espec` | `integer` | não |  |
| 42 | `st_encaminhamento_cirurgia_bmf` | `integer` | não |  |
| 43 | `st_encaminhamento_endodontia` | `integer` | não |  |
| 44 | `st_encaminhamento_estomatologi` | `integer` | não |  |
| 45 | `st_encaminhamento_implantodont` | `integer` | não |  |
| 46 | `st_encaminhamento_odontopediat` | `integer` | não |  |
| 47 | `st_encaminhamento_ortod_ortop` | `integer` | não |  |
| 48 | `st_encaminhamento_periodontia` | `integer` | não |  |
| 49 | `st_encaminhamento_protese_dent` | `integer` | não |  |
| 50 | `st_encaminhamento_radiologia` | `integer` | não |  |
| 51 | `st_encaminhamento_outros` | `integer` | não |  |
| 52 | `st_encaminhamento_nao_aplica` | `integer` | não |  |
| 53 | `ds_filtro_cids` | `character varying(4000)` | não |  |
| 54 | `ds_filtro_ciaps` | `character varying(4000)` | não |  |
| 55 | `ds_filtro_procedimentos` | `character varying(4000)` | não |  |
| 56 | `nu_prontuario` | `character varying(65)` | não |  |
| 57 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 58 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 59 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 60 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 61 | `dt_inicial_atendimento` | `timestamp with time zone` | não |  |
| 62 | `dt_final_atendimento` | `timestamp with time zone` | não |  |
| 63 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 64 | `nu_peso` | `double precision` | não |  |
| 65 | `nu_altura` | `double precision` | não |  |
| 66 | `co_dim_tp_particip_cidadao` | `bigint` | sim | FK → tb_dim_tipo_participacao_atend |
| 67 | `co_dim_tp_particip_prof_conv` | `bigint` | sim | FK → tb_dim_tipo_participacao_atend |
| 68 | `st_conduta_agendamento_emulti` | `integer` | não |  |
| 69 | `nu_circ_abdominal` | `numeric(6,1)` | não |  |
| 70 | `nu_perim_panturrilha` | `numeric(3,1)` | não |  |
| 71 | `nu_pressao_sistolica` | `numeric(3,0)` | não |  |
| 72 | `nu_pressao_diastolica` | `numeric(3,0)` | não |  |
| 73 | `nu_freq_respiratoria` | `numeric(3,0)` | não |  |
| 74 | `nu_freq_cardiaca` | `numeric(3,0)` | não |  |
| 75 | `nu_temperatura` | `numeric(3,1)` | não |  |
| 76 | `nu_saturacao_o2` | `numeric(3,0)` | não |  |
| 77 | `nu_perimetro_cefalico` | `numeric(5,2)` | não |  |
| 78 | `nu_glicemia` | `numeric(3,0)` | não |  |
| 79 | `co_dim_tipo_glicemia` | `bigint` | não | FK → tb_dim_tipo_glicemia |
| 80 | `ds_filtro_proced_avaliados` | `character varying(4000)` | não |  |
| 81 | `ds_filtro_proced_solicitados` | `character varying(4000)` | não |  |
| 82 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
| 83 | `st_nao_possui_cpf` | `integer` | não |  |
