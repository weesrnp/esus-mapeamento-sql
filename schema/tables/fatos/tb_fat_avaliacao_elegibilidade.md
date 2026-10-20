# tb_fat_avaliacao_elegibilidade

Tipo: tabela  
Grupo: fatos  
Colunas: 92

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_avaliacao_elegibldd` | `bigint` | sim | PK |
| 2 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 3 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 4 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 5 | `co_dim_profissional_1` | `bigint` | não | FK → tb_dim_profissional |
| 6 | `co_dim_cbo_1` | `bigint` | não | FK → tb_dim_cbo |
| 7 | `co_dim_equipe_1` | `bigint` | não | FK → tb_dim_equipe |
| 8 | `co_dim_unidade_saude_1` | `bigint` | não | FK → tb_dim_unidade_saude |
| 9 | `co_dim_profissional_2` | `bigint` | não | FK → tb_dim_profissional |
| 10 | `co_dim_cbo_2` | `bigint` | não | FK → tb_dim_cbo |
| 11 | `co_dim_equipe_2` | `bigint` | não | FK → tb_dim_equipe |
| 12 | `co_dim_unidade_saude_2` | `bigint` | não | FK → tb_dim_unidade_saude |
| 13 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 14 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 15 | `nu_cns` | `character(15)` | não |  |
| 16 | `dt_nascimento` | `date` | não |  |
| 17 | `co_dim_faixa_etaria` | `bigint` | não | FK → tb_dim_faixa_etaria |
| 18 | `co_dim_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 19 | `co_dim_procedencia_origem` | `bigint` | não | FK → tb_dim_procedencia_origem |
| 20 | `st_condic_acamado` | `integer` | não |  |
| 21 | `st_condic_domiciliado` | `integer` | não |  |
| 22 | `st_condic_ulceras_feridas` | `integer` | não |  |
| 23 | `st_condic_acompanham_nutricion` | `integer` | não |  |
| 24 | `st_condic_uso_sonda_nasogastri` | `integer` | não |  |
| 25 | `st_condic_uso_sonda_nasoentera` | `integer` | não |  |
| 26 | `st_condic_uso_gastrostomia` | `integer` | não |  |
| 27 | `st_condic_uso_colostomia` | `integer` | não |  |
| 28 | `st_condic_uso_cistostomia` | `integer` | não |  |
| 29 | `st_condic_uso_sond_vesic_demor` | `integer` | não |  |
| 30 | `st_condic_acomp_pre_operatorio` | `integer` | não |  |
| 31 | `st_condic_acomp_pos_operatorio` | `integer` | não |  |
| 32 | `st_condic_adapt_uso_ortes_prot` | `integer` | não |  |
| 33 | `st_condic_reabilita_domiciliar` | `integer` | não |  |
| 34 | `st_condic_cuidd_paliat_oncolog` | `integer` | não |  |
| 35 | `st_condic_cuidd_paliat_n_oncol` | `integer` | não |  |
| 36 | `st_condic_oxigenoterapia_domic` | `integer` | não |  |
| 37 | `st_condic_uso_traqueostomia` | `integer` | não |  |
| 38 | `st_condic_uso_aspir_via_aerea` | `integer` | não |  |
| 39 | `st_condic_suport_ventil_cpap` | `integer` | não |  |
| 40 | `st_condic_suport_ventil_bipap` | `integer` | não |  |
| 41 | `st_condic_dialise_peritonial` | `integer` | não |  |
| 42 | `st_condic_paracentese` | `integer` | não |  |
| 43 | `st_condic_medicacao_parenteral` | `integer` | não |  |
| 44 | `co_dim_cid_principal` | `bigint` | não | FK → tb_dim_cid |
| 45 | `co_dim_cid_sec_1` | `bigint` | não | FK → tb_dim_cid |
| 46 | `co_dim_cid_sec_2` | `bigint` | não | FK → tb_dim_cid |
| 47 | `co_dim_conclusao_modalidade_ad` | `bigint` | não | FK → tb_dim_modalidade_ad |
| 48 | `co_dim_tipo_elegibilidade` | `bigint` | não | FK → tb_dim_tipo_elegibilidade |
| 49 | `st_inelegivel_instabil_clinica` | `integer` | não |  |
| 50 | `st_inelegivel_necessid_propede` | `integer` | não |  |
| 51 | `st_inelegivel_outro_motivo_cli` | `integer` | não |  |
| 52 | `st_inelegivel_ausencia_cuidad` | `integer` | não |  |
| 53 | `st_inelegivel_outra_condi_soci` | `integer` | não |  |
| 54 | `co_dim_raca_cor` | `bigint` | não | FK → tb_dim_raca_cor |
| 55 | `co_dim_etnia` | `bigint` | não | FK → tb_dim_etnia |
| 56 | `st_desconhece_nome_mae` | `integer` | não |  |
| 57 | `st_desconhece_nome_pai` | `integer` | não |  |
| 58 | `co_dim_nacionalidade` | `bigint` | não | FK → tb_dim_nacionalidade |
| 59 | `dt_naturalizacao` | `date` | não |  |
| 60 | `co_dim_pais_nascimento` | `bigint` | não | FK → tb_dim_pais |
| 61 | `dt_entrada_brasil` | `date` | não |  |
| 62 | `co_dim_municipio_cidadao` | `bigint` | não | FK → tb_dim_municipio |
| 63 | `co_dim_tipo_logradouro` | `bigint` | não | FK → tb_dim_tipo_logradouro |
| 64 | `co_dim_municipio_residencia` | `bigint` | não | FK → tb_dim_municipio |
| 65 | `nu_cns_cuidador` | `character(15)` | não |  |
| 66 | `co_dim_cuidador` | `bigint` | não | FK → tb_dim_cuidador |
| 67 | `no_nome` | `character varying(225)` | não |  |
| 68 | `no_nome_social` | `character varying(225)` | não |  |
| 69 | `nu_nis` | `character varying(32)` | não |  |
| 70 | `no_nome_mae` | `character varying(225)` | não |  |
| 71 | `no_nome_pai` | `character varying(225)` | não |  |
| 72 | `nu_portaria_naturalizacao` | `character varying(65)` | não |  |
| 73 | `co_dim_uf_cidadao` | `bigint` | não |  |
| 74 | `no_email` | `character varying(225)` | não |  |
| 75 | `nu_cep_residencia` | `character varying(33)` | não |  |
| 76 | `co_dim_uf_residencia` | `bigint` | não |  |
| 77 | `no_bairro_residencia` | `character varying(545)` | não |  |
| 78 | `no_logradouro_residencia` | `character varying(161)` | não |  |
| 79 | `nu_num_logradouro_residencia` | `character varying(33)` | não |  |
| 80 | `no_complemento_residencia` | `character varying(545)` | não |  |
| 81 | `no_referencia_residencia` | `character varying(200)` | não |  |
| 82 | `nu_telefone_residencia` | `character varying(33)` | não |  |
| 83 | `nu_telefone_contato` | `character varying(33)` | não |  |
| 84 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 85 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 86 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 87 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 88 | `co_fat_cidadao_pec_cuidador` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 89 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 90 | `nu_cpf_cuidador` | `character varying(11)` | não |  |
| 91 | `st_nao_possui_cpf` | `integer` | não |  |
| 92 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
