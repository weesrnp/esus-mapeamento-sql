# tb_cidadao

Tipo: tabela  
Grupo: cadastro_e_territorio  
Colunas: 85

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cidadao` | `bigint` | sim | PK |
| 4 | `st_desconhece_nome_mae` | `integer` | sim |  |
| 6 | `co_localidade` | `bigint` | não | FK → tb_localidade |
| 8 | `nu_area` | `character varying(3)` | não |  |
| 9 | `nu_micro_area` | `character varying(3)` | não |  |
| 10 | `nu_nis_pis_pasep` | `character varying(50)` | não |  |
| 11 | `dt_atualizado` | `timestamp without time zone` | não |  |
| 12 | `nu_cns_responsavel` | `character varying(16)` | não |  |
| 13 | `no_responsavel` | `character varying(255)` | não |  |
| 14 | `dt_nascimento_responsavel` | `timestamp without time zone` | não |  |
| 15 | `nu_cns_cuidador` | `character varying(16)` | não |  |
| 16 | `no_cuidador` | `character varying(255)` | não |  |
| 17 | `dt_nascimento_cuidador` | `timestamp without time zone` | não |  |
| 18 | `tp_cds_cuidador` | `bigint` | não | FK → tb_cds_tipo_cuidador |
| 19 | `co_unico_cidadao` | `character varying(96)` | sim |  |
| 20 | `co_nacionalidade` | `bigint` | sim | FK → tb_nacionalidade |
| 21 | `co_pais_nascimento` | `bigint` | não | FK → tb_pais |
| 22 | `co_unico_ultima_ficha` | `character varying(96)` | não |  |
| 23 | `dt_ultima_ficha` | `date` | não |  |
| 24 | `st_registro_cadsus` | `integer` | não |  |
| 25 | `dt_atualizado_cadsus` | `date` | não |  |
| 26 | `st_desconhece_nome_pai` | `integer` | não |  |
| 27 | `dt_naturalizacao` | `timestamp with time zone` | não |  |
| 28 | `dt_entrada_brasil` | `timestamp with time zone` | não |  |
| 29 | `nu_portaria_naturalizacao` | `character varying(16)` | não |  |
| 30 | `st_fora_area` | `integer` | não |  |
| 31 | `st_infrm_orientacao_sexual` | `integer` | não |  |
| 32 | `tp_orientacao_sexual` | `character varying(25)` | não |  |
| 33 | `st_infrm_identidade_genero` | `integer` | não |  |
| 34 | `tp_identidade_genero` | `character varying(25)` | não |  |
| 35 | `st_compartilhamento_prontuario` | `integer` | não |  |
| 36 | `st_ativo` | `integer` | não |  |
| 37 | `st_nao_possui_cuidador` | `integer` | não |  |
| 39 | `nu_cpf` | `character varying(11)` | não |  |
| 40 | `nu_cns` | `character varying(16)` | não |  |
| 41 | `no_cidadao` | `character varying(500)` | não |  |
| 42 | `no_cidadao_filtro` | `character varying(600)` | não |  |
| 44 | `co_escolaridade` | `bigint` | não | FK → tb_escolaridade |
| 45 | `co_raca_cor` | `bigint` | não | FK → tb_raca_cor |
| 46 | `co_etnia` | `bigint` | não | FK → tb_etnia |
| 47 | `co_estado_civil` | `bigint` | não | FK → tb_estado_civil |
| 48 | `co_cbo` | `bigint` | não | FK → tb_cbo |
| 49 | `dt_nascimento` | `date` | não |  |
| 50 | `dt_obito` | `date` | não |  |
| 51 | `no_mae` | `character varying(500)` | não |  |
| 52 | `no_mae_filtro` | `character varying(600)` | não |  |
| 53 | `no_pai` | `character varying(500)` | não |  |
| 55 | `no_social` | `character varying(255)` | não |  |
| 56 | `st_faleceu` | `integer` | não |  |
| 57 | `nu_documento_obito` | `character varying(255)` | não |  |
| 58 | `st_dados_obito_cadsus` | `integer` | não |  |
| 59 | `no_localidade_exterior` | `character varying(255)` | não |  |
| 60 | `co_pais_exterior` | `bigint` | não | FK → tb_pais |
| 61 | `ds_cep` | `character varying(8)` | não |  |
| 62 | `ds_complemento` | `character varying(50)` | não |  |
| 63 | `ds_ponto_referencia` | `character varying(100)` | não |  |
| 64 | `ds_logradouro` | `character varying(150)` | não |  |
| 65 | `co_uf` | `bigint` | não | FK → tb_uf |
| 66 | `co_localidade_endereco` | `bigint` | não | FK → tb_localidade |
| 67 | `nu_numero` | `character varying(20)` | não |  |
| 68 | `st_sem_numero` | `integer` | não |  |
| 69 | `no_bairro` | `character varying(255)` | não |  |
| 70 | `no_bairro_filtro` | `character varying(255)` | não |  |
| 71 | `tp_logradouro` | `bigint` | não | FK → tb_tipo_logradouro |
| 72 | `nu_telefone_residencial` | `character varying(255)` | não |  |
| 73 | `nu_telefone_celular` | `character varying(255)` | não |  |
| 74 | `nu_telefone_contato` | `character varying(255)` | não |  |
| 75 | `ds_email` | `character varying(255)` | não |  |
| 76 | `st_ativo_para_exibicao` | `integer` | não |  |
| 77 | `st_unificado` | `integer` | sim |  |
| 78 | `st_territorio_utiliza_cpf` | `integer` | não |  |
| 79 | `nu_cpf_cuidador` | `character varying(11)` | não |  |
| 80 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
| 81 | `no_tipo_sanguineo` | `character varying(22)` | não |  |
| 82 | `no_sexo` | `character varying(24)` | não |  |
| 83 | `co_aldeia_residencia` | `bigint` | não | FK → tb_aldeia |
| 84 | `co_tipo_endereco` | `bigint` | não | FK → tb_tipo_endereco |
| 85 | `co_polo_base_residencia` | `bigint` | não | FK → tb_polo_base |
| 86 | `co_dsei_residencia` | `bigint` | não | FK → tb_dsei |
| 87 | `nu_familia` | `character varying(7)` | não |  |
| 88 | `st_cpf_recebido_cadsus` | `integer` | não |  |
| 89 | `nu_dnv` | `character varying(15)` | não |  |
| 90 | `st_nao_possui_cpf` | `integer` | não |  |
| 91 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |
| 92 | `dt_ultima_recusa` | `date` | não |  |

Referenciada por: `rl_grupo_part_ativ_col_cidadao`, `tb_ativ_col_observacao_cidadao`, `tb_ativ_col_registro_particip`, `tb_cidadao_aldeado`, `tb_cidadao_grupo`, `tb_cidadao_nucleo_familiar`, `tb_cidadao_unificacao_base`, `tb_cidadao_vinculacao_equipe`, `tb_condicoes_saude_auto`, `tb_info_socio_economicas`, `tb_info_sociodemograficas`, `tb_justificativa_status_ciddao`, `tb_lista_espera`, `tb_periodo_ausencia`, `tb_pessoa_fisica_imagem`, `tb_prontuario`, `tb_situacao_rua`, `tb_territorio_cidadao_erro`
