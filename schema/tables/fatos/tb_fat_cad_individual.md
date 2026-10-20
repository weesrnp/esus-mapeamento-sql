# tb_fat_cad_individual

Tipo: tabela  
Grupo: fatos  
Colunas: 153

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_cad_individual` | `bigint` | sim | PK |
| 2 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 3 | `nu_uuid_ficha_origem` | `character varying(96)` | não |  |
| 4 | `st_recusa_cadastro` | `integer` | não |  |
| 5 | `nu_cns` | `character(15)` | não |  |
| 6 | `dt_nascimento` | `date` | não |  |
| 7 | `st_desconhece_mae` | `integer` | não |  |
| 8 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 9 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 10 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 11 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 12 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 13 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 14 | `co_dim_tempo_validade` | `bigint` | não | FK → tb_dim_tempo |
| 15 | `co_dim_tempo_validade_recusa` | `bigint` | não | FK → tb_dim_tempo |
| 16 | `co_dim_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 17 | `co_dim_raca_cor` | `bigint` | não | FK → tb_dim_raca_cor |
| 18 | `co_dim_nacionalidade` | `bigint` | não | FK → tb_dim_nacionalidade |
| 19 | `co_dim_pais_nascimento` | `bigint` | não | FK → tb_dim_pais |
| 20 | `co_dim_municipio_cidadao` | `bigint` | não | FK → tb_dim_municipio |
| 21 | `nu_cns_responsavel` | `character(15)` | não |  |
| 22 | `st_responsavel_familiar` | `integer` | não |  |
| 23 | `st_frequenta_creche` | `integer` | não |  |
| 24 | `st_frequenta_cuidador` | `integer` | não |  |
| 25 | `st_participa_grupo_comunitario` | `integer` | não |  |
| 26 | `st_plano_saude_privado` | `integer` | não |  |
| 27 | `st_comunidade_tradicional` | `integer` | não |  |
| 28 | `st_deficiencia` | `integer` | não |  |
| 29 | `st_defi_auditiva` | `integer` | não |  |
| 30 | `st_defi_intelectual_cognitiva` | `integer` | não |  |
| 31 | `st_defi_outra` | `integer` | não |  |
| 32 | `st_defi_visual` | `integer` | não |  |
| 33 | `st_defi_fisica` | `integer` | não |  |
| 34 | `st_gestante` | `integer` | não |  |
| 35 | `st_doenca_respiratoria` | `integer` | não |  |
| 36 | `st_doenca_respira_asma` | `integer` | não |  |
| 37 | `st_doenca_respira_dpoc_enfisem` | `integer` | não |  |
| 38 | `st_doenca_respira_outra` | `integer` | não |  |
| 39 | `st_doenca_respira_n_sabe` | `integer` | não |  |
| 40 | `st_fumante` | `integer` | não |  |
| 41 | `st_alcool` | `integer` | não |  |
| 42 | `st_outra_droga` | `integer` | não |  |
| 43 | `st_hipertensao_arterial` | `integer` | não |  |
| 44 | `st_diabete` | `integer` | não |  |
| 45 | `st_avc` | `integer` | não |  |
| 46 | `st_infarto` | `integer` | não |  |
| 47 | `st_hanseniase` | `integer` | não |  |
| 48 | `st_tuberculose` | `integer` | não |  |
| 49 | `st_cancer` | `integer` | não |  |
| 50 | `st_internacao_12` | `integer` | não |  |
| 51 | `st_tratamento_psiquiatra` | `integer` | não |  |
| 52 | `st_acamado` | `integer` | não |  |
| 53 | `st_domiciliado` | `integer` | não |  |
| 54 | `st_usa_planta_medicinal` | `integer` | não |  |
| 55 | `st_doenca_cardiaca` | `integer` | não |  |
| 56 | `st_doenca_card_insuficiencia` | `integer` | não |  |
| 57 | `st_doenca_card_outro` | `integer` | não |  |
| 58 | `st_doenca_card_n_sabe` | `integer` | não |  |
| 59 | `st_problema_rins` | `integer` | não |  |
| 60 | `st_problema_rins_insuficiencia` | `integer` | não |  |
| 61 | `st_problema_rins_outro` | `integer` | não |  |
| 62 | `st_problema_rins_nao_sabe` | `integer` | não |  |
| 63 | `st_pic` | `integer` | não |  |
| 64 | `st_morador_rua` | `integer` | não |  |
| 65 | `st_recebe_beneficio` | `integer` | não |  |
| 66 | `st_referencia_familiar` | `integer` | não |  |
| 67 | `co_dim_frequencia_alimentacao` | `bigint` | não | FK → tb_dim_frequencia_alimentacao |
| 68 | `st_orig_alimen_restaurante_pop` | `integer` | não |  |
| 69 | `st_orig_alimen_doacao_reli` | `integer` | não |  |
| 70 | `st_orig_alimen_doacao_rest` | `integer` | não |  |
| 71 | `st_orig_alimen_doacao_popular` | `integer` | não |  |
| 72 | `st_orig_alimen_outros` | `integer` | não |  |
| 73 | `st_acompanhado_instituicao` | `integer` | não |  |
| 74 | `st_visita_familiar_frequente` | `integer` | não |  |
| 75 | `st_higiene_pessoal_acesso` | `integer` | não |  |
| 76 | `st_hig_pess_banho` | `integer` | não |  |
| 77 | `st_hig_pess_sanitario` | `integer` | não |  |
| 78 | `st_hig_pess_higiene_bucal` | `integer` | não |  |
| 79 | `st_hig_pess_outros` | `integer` | não |  |
| 80 | `co_dim_tipo_parentesco` | `bigint` | não | FK → tb_dim_tipo_parentesco |
| 81 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 82 | `co_dim_tipo_escolaridade` | `bigint` | não | FK → tb_dim_tipo_escolaridade |
| 83 | `co_dim_situacao_trabalho` | `bigint` | não | FK → tb_dim_situacao_trabalho |
| 84 | `co_dim_tipo_orientacao_sexual` | `bigint` | não | FK → tb_dim_tipo_orientacao_sexual |
| 85 | `co_dim_tipo_saida_cadastro` | `bigint` | não | FK → tb_dim_tipo_saida_cadastro |
| 86 | `co_dim_tipo_condicao_peso` | `bigint` | não | FK → tb_dim_tipo_condicao_peso |
| 87 | `co_dim_tempo_morador_rua` | `bigint` | não | FK → tb_dim_tempo_morador_rua |
| 88 | `co_dim_etnia` | `bigint` | não | FK → tb_dim_etnia |
| 89 | `co_dim_cbo_cidadao` | `bigint` | não | FK → tb_dim_cbo |
| 90 | `co_dim_identidade_genero` | `bigint` | não | FK → tb_dim_identidade_genero |
| 91 | `co_dim_faixa_etaria` | `bigint` | não | FK → tb_dim_faixa_etaria |
| 92 | `st_desconhece_pai` | `integer` | não |  |
| 93 | `st_informar_orientacao_sexual` | `integer` | não |  |
| 94 | `st_informar_identidade_genero` | `integer` | não |  |
| 95 | `dt_naturalizacao` | `date` | não |  |
| 96 | `dt_entrada_brasil` | `date` | não |  |
| 97 | `dt_obito` | `date` | não |  |
| 98 | `st_respons_crianca_adulto_resp` | `integer` | não |  |
| 99 | `st_respons_crianca_outra_crian` | `integer` | não |  |
| 100 | `st_respons_crianca_adolescente` | `integer` | não |  |
| 101 | `st_respons_crianca_sozinha` | `integer` | não |  |
| 102 | `st_respons_crianca_creche` | `integer` | não |  |
| 103 | `st_respons_crianca_outro` | `integer` | não |  |
| 104 | `nu_micro_area` | `character varying(3)` | não |  |
| 105 | `st_processo_linha_tempo` | `integer` | não |  |
| 106 | `st_processo_cidadao` | `integer` | não |  |
| 107 | `no_nome` | `character varying(500)` | não |  |
| 108 | `no_nome_social` | `character varying(500)` | não |  |
| 109 | `no_nome_mae` | `character varying(500)` | não |  |
| 110 | `no_nome_pai` | `character varying(500)` | não |  |
| 111 | `nu_nis` | `character varying(32)` | não |  |
| 112 | `nu_portaria_naturalizacao` | `character varying(65)` | não |  |
| 113 | `nu_celular` | `character varying(33)` | não |  |
| 114 | `no_email` | `character varying(500)` | não |  |
| 115 | `nu_obito_do` | `character varying(32)` | não |  |
| 116 | `no_maternidade_referencia` | `character varying(500)` | não |  |
| 117 | `no_causa_internacao12` | `character varying(500)` | não |  |
| 118 | `no_plantas_medicinais` | `character varying(500)` | não |  |
| 119 | `no_outra_condicao1` | `character varying(500)` | não |  |
| 120 | `no_outra_condicao2` | `character varying(500)` | não |  |
| 121 | `no_outra_condicao3` | `character varying(500)` | não |  |
| 122 | `no_acompanhado_instituicao` | `character varying(500)` | não |  |
| 123 | `no_visita_familiar_parentesco` | `character varying(500)` | não |  |
| 124 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 125 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 126 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 127 | `st_gerado_automaticamente` | `integer` | não |  |
| 128 | `st_ficha_inativa` | `integer` | não |  |
| 129 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 130 | `co_fat_cidadao_pec_responsvl` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 131 | `st_proc_operacionais` | `integer` | não |  |
| 132 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 133 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
| 134 | `co_dim_povo_comunidad_trad` | `bigint` | não | FK → tb_dim_povo_comunidad_trad |
| 135 | `st_comeu_que_tinha_dnheir_acab` | `integer` | não |  |
| 136 | `st_alimentos_acab_sem_dinheiro` | `integer` | não |  |
| 137 | `st_defi_tea` | `integer` | não |  |
| 138 | `nu_dnv_cidadao` | `character varying(15)` | não |  |
| 139 | `st_nao_possui_cpf` | `integer` | não |  |
| 140 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
| 141 | `co_dim_tipo_sanguineo` | `bigint` | não | FK → tb_dim_tipo_sanguineo |
| 142 | `co_dim_estado_civil` | `bigint` | não | FK → tb_dim_estado_civil |
| 143 | `st_beneficio_bolsa_familia` | `integer` | não |  |
| 144 | `st_beneficio_cesta_alimento` | `integer` | não |  |
| 145 | `st_beneficio_leite_nao_humano` | `integer` | não |  |
| 146 | `st_beneficio_nao_recebe` | `integer` | não |  |
| 147 | `st_beneficio_outros` | `integer` | não |  |
| 148 | `st_beneficio_aposentado` | `integer` | não |  |
| 149 | `st_beneficio_prest_continuada` | `integer` | não |  |
| 150 | `st_cidadao_aldeado` | `integer` | não |  |
| 151 | `co_dim_tipo_socioeducativo` | `bigint` | não | FK → tb_dim_tipo_socioeducativo |
| 152 | `co_dim_tempo_socioeducativo` | `bigint` | não | FK → tb_dim_tempo_socioeducativo |
| 153 | `st_atend_socioeducativo` | `integer` | não |  |

Referenciada por: `tb_fat_cidadao_aldeado`
