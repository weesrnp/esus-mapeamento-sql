# tb_cds_domicilio

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 62

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_domicilio` | `bigint` | sim | PK |
| 2 | `tp_logradouro` | `bigint` | não | FK → tb_tipo_logradouro |
| 3 | `ds_complemento` | `character varying(256)` | não |  |
| 4 | `co_municipio` | `bigint` | não | FK → tb_localidade |
| 5 | `no_logradouro` | `character varying(256)` | não |  |
| 6 | `no_bairro` | `character varying(256)` | não |  |
| 7 | `ds_cep` | `character varying(8)` | não |  |
| 8 | `nu_fone_referencia` | `character varying(255)` | não |  |
| 9 | `nu_fone_residencia` | `character varying(255)` | não |  |
| 10 | `nu_domicilio` | `character varying(255)` | não |  |
| 11 | `co_unico_domicilio` | `character varying(96)` | não |  |
| 12 | `dt_ultima_atualizacao` | `timestamp with time zone` | não |  |
| 13 | `qt_referencia` | `bigint` | não |  |
| 14 | `st_sem_numero` | `integer` | não |  |
| 15 | `co_uf` | `bigint` | não | FK → tb_uf |
| 16 | `nu_ine` | `character varying(255)` | não |  |
| 17 | `nu_cnes` | `character varying(255)` | não |  |
| 18 | `co_unico_ultima_ficha` | `character varying(96)` | não |  |
| 19 | `nu_micro_area` | `character varying(3)` | não |  |
| 20 | `st_fora_area` | `integer` | não |  |
| 21 | `tp_cds_imovel` | `bigint` | não | FK → tb_cds_tipo_imovel |
| 22 | `ds_ponto_referencia` | `character varying(255)` | não |  |
| 23 | `no_instituicao_permanencia` | `character varying(255)` | não |  |
| 24 | `st_outros_prof_vinculados` | `integer` | não |  |
| 25 | `no_responsavel_tecnico` | `character varying(255)` | não |  |
| 26 | `nu_cns_responsavel_tecnico` | `character varying(15)` | não |  |
| 27 | `no_cargo_instituicao` | `character varying(255)` | não |  |
| 28 | `nu_contato_responsavel_tecnico` | `character varying(255)` | não |  |
| 29 | `nu_latitude` | `double precision` | não |  |
| 30 | `nu_longitude` | `double precision` | não |  |
| 31 | `no_bairro_filtro` | `character varying(256)` | não |  |
| 32 | `no_logradouro_filtro` | `character varying(256)` | não |  |
| 33 | `st_cadastro_completo` | `integer` | não |  |
| 34 | `dt_ultima_visita` | `date` | não |  |
| 35 | `nu_cns` | `character varying(16)` | não |  |
| 36 | `nu_cbo_2002` | `character varying(10)` | não |  |
| 37 | `co_tipo_abstcmento_agua` | `bigint` | não | FK → tb_tipo_abastecimento_agua |
| 38 | `co_tipo_acesso_dom` | `bigint` | não | FK → tb_tipo_acesso_domicilio |
| 39 | `co_tipo_destino_lixo` | `bigint` | não | FK → tb_tipo_destino_lixo |
| 40 | `co_tipo_domicilio` | `bigint` | não | FK → tb_tipo_domicilio |
| 41 | `co_tipo_escmento_sntar` | `bigint` | não | FK → tb_tipo_escoamento_sanitar |
| 42 | `co_tipo_localizacao` | `bigint` | não | FK → tb_tipo_localizacao |
| 43 | `co_tipo_material_parede` | `bigint` | não | FK → tb_tipo_material_parede |
| 44 | `co_tipo_posse_terra` | `bigint` | não | FK → tb_tipo_posse_terra |
| 45 | `co_tipo_situacao_moradia` | `bigint` | não | FK → tb_tipo_situacao_moradia |
| 46 | `co_tipo_tratamento_agua` | `bigint` | não | FK → tb_tipo_tratamento_agua |
| 47 | `st_energia_eletrica` | `integer` | não |  |
| 48 | `nu_comodos` | `integer` | não |  |
| 49 | `nu_moradores` | `integer` | não |  |
| 50 | `co_tipo_origem_energia_eletric` | `bigint` | não | FK → tb_tipo_origem_energia_eletric |
| 51 | `co_tipo_endereco` | `bigint` | não | FK → tb_tipo_endereco |
| 52 | `co_dsei` | `bigint` | não | FK → tb_dsei |
| 53 | `co_polo_base` | `bigint` | não | FK → tb_polo_base |
| 54 | `co_aldeia` | `bigint` | não | FK → tb_aldeia |
| 55 | `co_localidade_aldeia` | `bigint` | não | FK → tb_localidade |
| 56 | `co_uf_aldeia` | `bigint` | não | FK → tb_uf |
| 57 | `nu_residencia_indigena` | `character varying(7)` | não |  |
| 58 | `st_microarea_polo_base` | `integer` | não |  |
| 59 | `st_status_recusa` | `integer` | não |  |
| 60 | `st_ativo` | `integer` | sim |  |
| 61 | `st_possui_inconsistencia` | `integer` | não |  |
| 62 | `dt_processamento` | `timestamp without time zone` | não |  |

Referenciada por: `tb_animais_domicilio`, `tb_familia`, `tb_territorio_domicilio_erro`
