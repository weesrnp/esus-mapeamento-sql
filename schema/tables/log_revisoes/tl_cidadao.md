# tl_cidadao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 84

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_unico_cidadao_prontuario` | `character varying(36)` | não |  |
| 4 | `co_unico_prontuario` | `character varying(36)` | não |  |
| 5 | `co_seq_cidadao` | `bigint` | sim | PK |
| 6 | `st_desconhece_nome_mae` | `integer` | não |  |
| 7 | `st_nao_possui_cns` | `integer` | não |  |
| 8 | `co_localidade` | `bigint` | não |  |
| 9 | `tp_sanguineo` | `bigint` | não |  |
| 10 | `nu_area` | `character varying(3)` | não |  |
| 11 | `nu_micro_area` | `character varying(3)` | não |  |
| 12 | `nu_nis_pis_pasep` | `character varying(50)` | não |  |
| 13 | `dt_atualizado` | `timestamp without time zone` | não |  |
| 14 | `nu_cns_responsavel` | `character varying(16)` | não |  |
| 15 | `no_responsavel` | `character varying(255)` | não |  |
| 16 | `dt_nascimento_responsavel` | `timestamp without time zone` | não |  |
| 17 | `nu_cns_cuidador` | `character varying(16)` | não |  |
| 18 | `no_cuidador` | `character varying(255)` | não |  |
| 19 | `dt_nascimento_cuidador` | `timestamp without time zone` | não |  |
| 20 | `tp_cds_cuidador` | `bigint` | não |  |
| 21 | `co_unico_cidadao` | `character varying(96)` | não |  |
| 22 | `co_nacionalidade` | `bigint` | não |  |
| 23 | `co_pais_nascimento` | `bigint` | não |  |
| 24 | `co_unico_ultima_ficha` | `character varying(96)` | não |  |
| 25 | `dt_ultima_ficha` | `date` | não |  |
| 26 | `st_registro_cadsus` | `integer` | não |  |
| 27 | `dt_atualizado_cadsus` | `date` | não |  |
| 28 | `st_desconhece_nome_pai` | `integer` | não |  |
| 29 | `dt_naturalizacao` | `timestamp with time zone` | não |  |
| 30 | `dt_entrada_brasil` | `timestamp with time zone` | não |  |
| 31 | `nu_portaria_naturalizacao` | `character varying(16)` | não |  |
| 32 | `st_fora_area` | `integer` | não |  |
| 33 | `st_infrm_orientacao_sexual` | `integer` | não |  |
| 34 | `tp_orientacao_sexual` | `character varying(25)` | não |  |
| 35 | `st_infrm_identidade_genero` | `integer` | não |  |
| 36 | `tp_identidade_genero` | `character varying(25)` | não |  |
| 37 | `st_compartilhamento_prontuario` | `integer` | não |  |
| 38 | `st_ativo` | `integer` | não |  |
| 39 | `st_nao_possui_cuidador` | `integer` | não |  |
| 40 | `dt_ultima_alteracao_cns` | `timestamp with time zone` | não |  |
| 41 | `nu_cpf` | `character varying(11)` | não |  |
| 42 | `nu_cns` | `character varying(16)` | não |  |
| 43 | `no_cidadao` | `character varying(500)` | não |  |
| 44 | `no_cidadao_filtro` | `character varying(600)` | não |  |
| 45 | `co_sexo` | `bigint` | não |  |
| 46 | `co_escolaridade` | `bigint` | não |  |
| 47 | `co_raca_cor` | `bigint` | não |  |
| 48 | `co_etnia` | `bigint` | não |  |
| 49 | `co_estado_civil` | `bigint` | não |  |
| 50 | `co_cbo` | `bigint` | não |  |
| 51 | `dt_nascimento` | `date` | não |  |
| 52 | `dt_obito` | `date` | não |  |
| 53 | `no_mae` | `character varying(500)` | não |  |
| 54 | `no_mae_filtro` | `character varying(600)` | não |  |
| 55 | `no_pai` | `character varying(500)` | não |  |
| 56 | `no_pai_filtro` | `character varying(600)` | não |  |
| 57 | `no_social` | `character varying(255)` | não |  |
| 58 | `st_faleceu` | `integer` | não |  |
| 59 | `nu_documento_obito` | `character varying(255)` | não |  |
| 60 | `st_dados_obito_cadsus` | `integer` | não |  |
| 61 | `no_localidade_exterior` | `character varying(255)` | não |  |
| 62 | `co_pais_exterior` | `bigint` | não |  |
| 63 | `ds_cep` | `character varying(8)` | não |  |
| 64 | `ds_complemento` | `character varying(50)` | não |  |
| 65 | `ds_ponto_referencia` | `character varying(100)` | não |  |
| 66 | `ds_logradouro` | `character varying(150)` | não |  |
| 67 | `co_uf` | `bigint` | não |  |
| 68 | `co_localidade_endereco` | `bigint` | não |  |
| 69 | `nu_numero` | `character varying(20)` | não |  |
| 70 | `st_sem_numero` | `integer` | não |  |
| 71 | `no_bairro` | `character varying(255)` | não |  |
| 72 | `no_bairro_filtro` | `character varying(255)` | não |  |
| 73 | `tp_logradouro` | `bigint` | não |  |
| 74 | `nu_telefone_residencial` | `character varying(255)` | não |  |
| 75 | `nu_telefone_celular` | `character varying(255)` | não |  |
| 76 | `nu_telefone_contato` | `character varying(255)` | não |  |
| 77 | `ds_email` | `character varying(255)` | não |  |
| 78 | `st_ativo_para_exibicao` | `integer` | não |  |
| 79 | `st_unificado` | `integer` | não |  |
| 80 | `st_territorio_utiliza_cpf` | `integer` | não |  |
| 81 | `nu_cpf_cuidador` | `character varying(11)` | não |  |
| 82 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
| 83 | `no_tipo_sanguineo` | `character varying(22)` | não |  |
| 84 | `no_sexo` | `character varying(24)` | não |  |
