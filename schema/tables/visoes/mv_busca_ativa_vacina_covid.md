# mv_busca_ativa_vacina_covid

Tipo: view materializada  
Grupo: visoes  
Colunas: 57

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_acomp_cidadaos_vinc` | `bigint` | não |  |
| 2 | `co_cidadao` | `bigint` | não |  |
| 3 | `no_cidadao` | `character varying(255)` | não |  |
| 4 | `no_social_cidadao` | `character varying(255)` | não |  |
| 5 | `nu_telefone_celular` | `character varying(255)` | não |  |
| 6 | `nu_telefone_contato` | `character varying(255)` | não |  |
| 7 | `nu_fone_residencial` | `character varying(255)` | não |  |
| 8 | `nu_cns_cidadao` | `character varying(16)` | não |  |
| 9 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 10 | `nu_cnes_vinc_equipe` | `character varying(20)` | não |  |
| 11 | `nu_ine_vinc_equipe` | `character varying(255)` | não |  |
| 12 | `no_equipe_vinc_equipe` | `character varying(255)` | não |  |
| 13 | `dt_nascimento_cidadao` | `date` | não |  |
| 14 | `no_sexo_cidadao` | `character varying(15)` | não |  |
| 15 | `tp_identidade_genero_cidadao` | `character varying(25)` | não |  |
| 16 | `st_possui_fcdt` | `integer` | não |  |
| 17 | `no_tipo_logradouro_tb_cidadao` | `character varying(255)` | não |  |
| 18 | `ds_logradouro_tb_cidadao` | `character varying(150)` | não |  |
| 19 | `nu_numero_tb_cidadao` | `character varying(20)` | não |  |
| 20 | `st_sem_numero_tb_cidadao` | `integer` | não |  |
| 21 | `ds_complemento_tb_cidadao` | `character varying(50)` | não |  |
| 22 | `no_bairro_tb_cidadao` | `character varying(255)` | não |  |
| 23 | `no_municipio_tb_cidadao` | `character varying(255)` | não |  |
| 24 | `sg_uf_tb_cidadao` | `character varying(255)` | não |  |
| 25 | `ds_cep_tb_cidadao` | `character varying(8)` | não |  |
| 26 | `ds_logradouro_tb_cidadao_filtr` | `character varying(150)` | não |  |
| 27 | `no_bairro_tb_cidadao_filtro` | `character varying(255)` | não |  |
| 28 | `nu_micro_area_tb_cidadao` | `character varying(3)` | não |  |
| 29 | `no_tipo_logradouro_domicilio` | `character varying(255)` | não |  |
| 30 | `ds_logradouro_domicilio` | `character varying(256)` | não |  |
| 31 | `nu_numero_domicilio` | `character varying(255)` | não |  |
| 32 | `st_sem_numero_domicilio` | `integer` | não |  |
| 33 | `ds_complemento_domicilio` | `character varying(256)` | não |  |
| 34 | `no_bairro_domicilio` | `character varying(255)` | não |  |
| 35 | `no_municipio_domicilio` | `character varying(255)` | não |  |
| 36 | `sg_uf_domicilio` | `character varying(255)` | não |  |
| 37 | `ds_cep_domicilio` | `character varying(8)` | não |  |
| 38 | `ds_logradouro_domicilio_filtro` | `character varying(256)` | não |  |
| 39 | `no_bairro_domicilio_filtro` | `character varying(255)` | não |  |
| 40 | `nu_micro_area_domicilio` | `character varying(3)` | não |  |
| 41 | `co_tipo_endereco_tb_cidadao` | `bigint` | não |  |
| 42 | `no_dsei_tb_cidadao` | `character varying(255)` | não |  |
| 43 | `no_polo_base_tb_cidadao` | `character varying(100)` | não |  |
| 44 | `no_aldeia_tb_cidadao` | `character varying(100)` | não |  |
| 45 | `nu_familia_tb_cidadao` | `character varying(7)` | não |  |
| 46 | `co_tipo_endereco_domicilio` | `bigint` | não |  |
| 47 | `no_dsei_domicilio` | `character varying(255)` | não |  |
| 48 | `no_polo_base_domicilio` | `character varying(100)` | não |  |
| 49 | `no_aldeia_domicilio` | `character varying(100)` | não |  |
| 50 | `co_imunobiologico` | `integer` | não |  |
| 51 | `no_imunobiologico` | `character varying(255)` | não |  |
| 52 | `co_dose_imunobiologico` | `integer` | não |  |
| 53 | `sg_dose_imunobiologico` | `character varying(255)` | não |  |
| 54 | `dt_vacina_aplicada` | `date` | não |  |
| 55 | `co_grupo_atendimento` | `integer` | não |  |
| 56 | `nu_ordem_imunobiologico` | `integer` | não |  |
| 57 | `nu_ordem_dose` | `integer` | não |  |
