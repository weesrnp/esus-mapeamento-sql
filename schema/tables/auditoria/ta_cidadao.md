# ta_cidadao

Tipo: tabela  
Grupo: auditoria  
Colunas: 90

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacidadao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_cidadao` | `bigint` | não |  |
| 5 | `co_unico_cidadao_prontuario` | `character varying(36)` | não |  |
| 6 | `co_unico_prontuario` | `character varying(36)` | não |  |
| 7 | `st_desconhece_nome_mae` | `integer` | não |  |
| 8 | `co_localidade` | `bigint` | não |  |
| 9 | `nu_area` | `character varying(3)` | não |  |
| 10 | `nu_micro_area` | `character varying(3)` | não |  |
| 11 | `nu_nis_pis_pasep` | `character varying(50)` | não |  |
| 12 | `dt_atualizado` | `timestamp without time zone` | não |  |
| 13 | `nu_cns_responsavel` | `character varying(16)` | não |  |
| 14 | `no_responsavel` | `character varying(255)` | não |  |
| 15 | `dt_nascimento_responsavel` | `timestamp without time zone` | não |  |
| 16 | `nu_cns_cuidador` | `character varying(16)` | não |  |
| 17 | `no_cuidador` | `character varying(255)` | não |  |
| 18 | `dt_nascimento_cuidador` | `timestamp without time zone` | não |  |
| 19 | `tp_cds_cuidador` | `bigint` | não |  |
| 20 | `co_unico_cidadao` | `character varying(96)` | não |  |
| 21 | `co_nacionalidade` | `bigint` | não |  |
| 22 | `co_pais_nascimento` | `bigint` | não |  |
| 23 | `co_unico_ultima_ficha` | `character varying(96)` | não |  |
| 24 | `dt_ultima_ficha` | `date` | não |  |
| 25 | `st_registro_cadsus` | `integer` | não |  |
| 26 | `dt_atualizado_cadsus` | `date` | não |  |
| 27 | `st_desconhece_nome_pai` | `integer` | não |  |
| 28 | `dt_naturalizacao` | `timestamp with time zone` | não |  |
| 29 | `dt_entrada_brasil` | `timestamp with time zone` | não |  |
| 30 | `nu_portaria_naturalizacao` | `character varying(16)` | não |  |
| 31 | `st_fora_area` | `integer` | não |  |
| 32 | `st_infrm_orientacao_sexual` | `integer` | não |  |
| 33 | `tp_orientacao_sexual` | `character varying(25)` | não |  |
| 34 | `st_infrm_identidade_genero` | `integer` | não |  |
| 35 | `tp_identidade_genero` | `character varying(25)` | não |  |
| 36 | `st_compartilhamento_prontuario` | `integer` | não |  |
| 37 | `st_ativo` | `integer` | não |  |
| 38 | `st_nao_possui_cuidador` | `integer` | não |  |
| 39 | `nu_cpf` | `character varying(11)` | não |  |
| 40 | `nu_cns` | `character varying(16)` | não |  |
| 41 | `no_cidadao` | `character varying(500)` | não |  |
| 42 | `no_cidadao_filtro` | `character varying(600)` | não |  |
| 43 | `co_escolaridade` | `bigint` | não |  |
| 44 | `co_raca_cor` | `bigint` | não |  |
| 45 | `co_etnia` | `bigint` | não |  |
| 46 | `co_estado_civil` | `bigint` | não |  |
| 47 | `co_cbo` | `bigint` | não |  |
| 48 | `dt_nascimento` | `date` | não |  |
| 49 | `dt_obito` | `date` | não |  |
| 50 | `no_mae` | `character varying(500)` | não |  |
| 51 | `no_mae_filtro` | `character varying(600)` | não |  |
| 52 | `no_pai` | `character varying(500)` | não |  |
| 53 | `no_social` | `character varying(255)` | não |  |
| 54 | `st_faleceu` | `integer` | não |  |
| 55 | `nu_documento_obito` | `character varying(255)` | não |  |
| 56 | `st_dados_obito_cadsus` | `integer` | não |  |
| 57 | `no_localidade_exterior` | `character varying(255)` | não |  |
| 58 | `co_pais_exterior` | `bigint` | não |  |
| 59 | `ds_cep` | `character varying(8)` | não |  |
| 60 | `ds_complemento` | `character varying(50)` | não |  |
| 61 | `ds_ponto_referencia` | `character varying(100)` | não |  |
| 62 | `ds_logradouro` | `character varying(150)` | não |  |
| 63 | `co_uf` | `bigint` | não |  |
| 64 | `co_localidade_endereco` | `bigint` | não |  |
| 65 | `nu_numero` | `character varying(20)` | não |  |
| 66 | `st_sem_numero` | `integer` | não |  |
| 67 | `no_bairro` | `character varying(255)` | não |  |
| 68 | `no_bairro_filtro` | `character varying(255)` | não |  |
| 69 | `tp_logradouro` | `bigint` | não |  |
| 70 | `nu_telefone_residencial` | `character varying(255)` | não |  |
| 71 | `nu_telefone_celular` | `character varying(255)` | não |  |
| 72 | `nu_telefone_contato` | `character varying(255)` | não |  |
| 73 | `ds_email` | `character varying(255)` | não |  |
| 74 | `st_ativo_para_exibicao` | `integer` | não |  |
| 75 | `st_unificado` | `integer` | não |  |
| 76 | `st_territorio_utiliza_cpf` | `integer` | não |  |
| 77 | `nu_cpf_cuidador` | `character varying(11)` | não |  |
| 78 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
| 79 | `no_tipo_sanguineo` | `character varying(22)` | não |  |
| 80 | `no_sexo` | `character varying(24)` | não |  |
| 81 | `co_aldeia_residencia` | `bigint` | não |  |
| 82 | `co_tipo_endereco` | `bigint` | não |  |
| 83 | `co_polo_base_residencia` | `bigint` | não |  |
| 84 | `co_dsei_residencia` | `bigint` | não |  |
| 85 | `nu_familia` | `character varying(7)` | não |  |
| 86 | `st_cpf_recebido_cadsus` | `integer` | não |  |
| 87 | `nu_dnv` | `character varying(15)` | não |  |
| 88 | `st_nao_possui_cpf` | `integer` | não |  |
| 89 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
| 90 | `dt_ultima_recusa` | `date` | não |  |
