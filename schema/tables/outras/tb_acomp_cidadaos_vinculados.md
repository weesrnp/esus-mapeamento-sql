# tb_acomp_cidadaos_vinculados

Tipo: tabela  
Grupo: outras  
Colunas: 60

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_acomp_cidadaos_vinc` | `bigint` | sim | PK |
| 2 | `no_cidadao` | `character varying(255)` | não |  |
| 3 | `no_social_cidadao` | `character varying(255)` | não |  |
| 4 | `dt_nascimento_cidadao` | `date` | não |  |
| 5 | `no_sexo_cidadao` | `character varying(15)` | não |  |
| 6 | `tp_identidade_genero_cidadao` | `character varying(25)` | não |  |
| 7 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 8 | `nu_cns_cidadao` | `character varying(16)` | não |  |
| 9 | `st_usar_cadastro_individual` | `integer` | não |  |
| 10 | `st_possui_fci` | `integer` | sim |  |
| 11 | `st_possui_fcdt` | `integer` | sim |  |
| 12 | `nu_telefone_celular` | `character varying(255)` | não |  |
| 13 | `nu_telefone_contato` | `character varying(255)` | não |  |
| 14 | `co_unico_ultima_ficha` | `character varying(96)` | não |  |
| 15 | `dt_ultima_atualizacao_cidadao` | `date` | não |  |
| 16 | `co_cidadao` | `bigint` | sim |  |
| 17 | `no_responsavel` | `character varying(255)` | não |  |
| 18 | `nu_fone_residencial` | `character varying(255)` | não |  |
| 19 | `nu_cnes_vinc_equipe` | `character varying(20)` | não |  |
| 20 | `dt_atualizacao_fcd` | `date` | não |  |
| 21 | `nu_ine_vinc_equipe` | `character varying(255)` | não |  |
| 22 | `no_equipe_vinc_equipe` | `character varying(255)` | não |  |
| 23 | `nu_micro_area_tb_cidadao` | `character varying(3)` | não |  |
| 24 | `nu_micro_area_domicilio` | `character varying(3)` | não |  |
| 25 | `no_tipo_logradouro_tb_cidadao` | `character varying(255)` | não |  |
| 26 | `ds_logradouro_tb_cidadao` | `character varying(150)` | não |  |
| 27 | `nu_numero_tb_cidadao` | `character varying(20)` | não |  |
| 28 | `st_sem_numero_tb_cidadao` | `integer` | não |  |
| 29 | `ds_complemento_tb_cidadao` | `character varying(50)` | não |  |
| 30 | `no_bairro_tb_cidadao` | `character varying(255)` | não |  |
| 31 | `no_municipio_tb_cidadao` | `character varying(255)` | não |  |
| 32 | `sg_uf_tb_cidadao` | `character varying(255)` | não |  |
| 33 | `ds_cep_tb_cidadao` | `character varying(8)` | não |  |
| 34 | `no_tipo_logradouro_domicilio` | `character varying(255)` | não |  |
| 35 | `ds_logradouro_domicilio` | `character varying(256)` | não |  |
| 36 | `nu_numero_domicilio` | `character varying(255)` | não |  |
| 37 | `st_sem_numero_domicilio` | `integer` | não |  |
| 38 | `ds_complemento_domicilio` | `character varying(256)` | não |  |
| 39 | `no_bairro_domicilio` | `character varying(255)` | não |  |
| 40 | `no_municipio_domicilio` | `character varying(255)` | não |  |
| 41 | `sg_uf_domicilio` | `character varying(255)` | não |  |
| 42 | `ds_cep_domicilio` | `character varying(8)` | não |  |
| 43 | `ds_logradouro_tb_cidadao_filtr` | `character varying(150)` | não |  |
| 44 | `no_bairro_tb_cidadao_filtro` | `character varying(255)` | não |  |
| 45 | `ds_logradouro_domicilio_filtro` | `character varying(256)` | não |  |
| 46 | `no_bairro_domicilio_filtro` | `character varying(255)` | não |  |
| 47 | `co_cds_domicilio` | `bigint` | não |  |
| 48 | `ds_tipo_localizacao_domicilio` | `character varying(255)` | não |  |
| 49 | `no_raca_cor` | `character varying(50)` | não |  |
| 50 | `co_tipo_endereco_tb_cidadao` | `bigint` | não |  |
| 51 | `no_dsei_tb_cidadao` | `character varying(255)` | não |  |
| 52 | `no_polo_base_tb_cidadao` | `character varying(100)` | não |  |
| 53 | `no_aldeia_tb_cidadao` | `character varying(100)` | não |  |
| 54 | `nu_familia_tb_cidadao` | `character varying(7)` | não |  |
| 55 | `co_tipo_endereco_domicilio` | `bigint` | não |  |
| 56 | `no_dsei_domicilio` | `character varying(255)` | não |  |
| 57 | `no_polo_base_domicilio` | `character varying(100)` | não |  |
| 58 | `no_aldeia_domicilio` | `character varying(100)` | não |  |
| 59 | `co_fat_cidadao_pec` | `bigint` | não |  |
| 60 | `st_reprocessar_vinculo` | `integer` | sim |  |
