# ta_cds_domicilio

Tipo: tabela  
Grupo: auditoria  
Colunas: 65

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacdsdomicilio` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_cds_domicilio` | `bigint` | não |  |
| 5 | `tp_logradouro` | `bigint` | não |  |
| 6 | `ds_complemento` | `character varying(256)` | não |  |
| 7 | `co_municipio` | `bigint` | não |  |
| 8 | `no_logradouro` | `character varying(256)` | não |  |
| 9 | `no_bairro` | `character varying(256)` | não |  |
| 10 | `ds_cep` | `character varying(8)` | não |  |
| 11 | `nu_fone_referencia` | `character varying(255)` | não |  |
| 12 | `nu_fone_residencia` | `character varying(255)` | não |  |
| 13 | `nu_domicilio` | `character varying(255)` | não |  |
| 14 | `co_unico_domicilio` | `character varying(96)` | não |  |
| 15 | `dt_ultima_atualizacao` | `timestamp with time zone` | não |  |
| 16 | `qt_referencia` | `bigint` | não |  |
| 17 | `st_sem_numero` | `integer` | não |  |
| 18 | `co_uf` | `bigint` | não |  |
| 19 | `nu_ine` | `character varying(255)` | não |  |
| 20 | `nu_cnes` | `character varying(255)` | não |  |
| 21 | `co_unico_ultima_ficha` | `character varying(96)` | não |  |
| 22 | `nu_micro_area` | `character varying(3)` | não |  |
| 23 | `st_fora_area` | `integer` | não |  |
| 24 | `tp_cds_imovel` | `bigint` | não |  |
| 25 | `ds_ponto_referencia` | `character varying(255)` | não |  |
| 26 | `no_instituicao_permanencia` | `character varying(255)` | não |  |
| 27 | `st_outros_prof_vinculados` | `integer` | não |  |
| 28 | `no_responsavel_tecnico` | `character varying(255)` | não |  |
| 29 | `nu_cns_responsavel_tecnico` | `character varying(15)` | não |  |
| 30 | `no_cargo_instituicao` | `character varying(255)` | não |  |
| 31 | `nu_contato_responsavel_tecnico` | `character varying(255)` | não |  |
| 32 | `nu_latitude` | `double precision` | não |  |
| 33 | `nu_longitude` | `double precision` | não |  |
| 34 | `no_bairro_filtro` | `character varying(256)` | não |  |
| 35 | `no_logradouro_filtro` | `character varying(256)` | não |  |
| 36 | `st_cadastro_completo` | `integer` | não |  |
| 37 | `dt_ultima_visita` | `date` | não |  |
| 38 | `nu_cns` | `character varying(16)` | não |  |
| 39 | `nu_cbo_2002` | `character varying(10)` | não |  |
| 40 | `co_tipo_abstcmento_agua` | `bigint` | não |  |
| 41 | `co_tipo_acesso_dom` | `bigint` | não |  |
| 42 | `co_tipo_destino_lixo` | `bigint` | não |  |
| 43 | `co_tipo_domicilio` | `bigint` | não |  |
| 44 | `co_tipo_escmento_sntar` | `bigint` | não |  |
| 45 | `co_tipo_localizacao` | `bigint` | não |  |
| 46 | `co_tipo_material_parede` | `bigint` | não |  |
| 47 | `co_tipo_posse_terra` | `bigint` | não |  |
| 48 | `co_tipo_situacao_moradia` | `bigint` | não |  |
| 49 | `co_tipo_tratamento_agua` | `bigint` | não |  |
| 50 | `st_energia_eletrica` | `integer` | não |  |
| 51 | `nu_comodos` | `integer` | não |  |
| 52 | `nu_moradores` | `integer` | não |  |
| 53 | `co_tipo_origem_energia_eletric` | `bigint` | não |  |
| 54 | `co_tipo_endereco` | `bigint` | não |  |
| 55 | `co_dsei` | `bigint` | não |  |
| 56 | `co_polo_base` | `bigint` | não |  |
| 57 | `co_aldeia` | `bigint` | não |  |
| 58 | `co_localidade_aldeia` | `bigint` | não |  |
| 59 | `co_uf_aldeia` | `bigint` | não |  |
| 60 | `nu_residencia_indigena` | `character varying(7)` | não |  |
| 61 | `st_microarea_polo_base` | `integer` | não |  |
| 62 | `st_status_recusa` | `integer` | não |  |
| 63 | `st_ativo` | `integer` | não |  |
| 64 | `st_possui_inconsistencia` | `integer` | não |  |
| 65 | `dt_processamento` | `timestamp without time zone` | não |  |
