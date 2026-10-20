# tb_fat_cad_domiciliar

Tipo: tabela  
Grupo: fatos  
Colunas: 71

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_cad_domiciliar` | `bigint` | sim | PK |
| 2 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 3 | `nu_uuid_ficha_origem` | `character varying(92)` | não |  |
| 4 | `qt_morador` | `integer` | não |  |
| 5 | `nu_comodo` | `integer` | não |  |
| 6 | `st_recusa_cadastro` | `integer` | não |  |
| 7 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 8 | `co_dim_tipo_imovel` | `bigint` | não | FK → tb_dim_tipo_imovel |
| 9 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 10 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 11 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 12 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 13 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 14 | `co_dim_tempo_validade` | `bigint` | não | FK → tb_dim_tempo |
| 15 | `co_dim_tempo_validade_recusa` | `bigint` | não | FK → tb_dim_tempo |
| 16 | `co_dim_tipo_logradouro` | `bigint` | não | FK → tb_dim_tipo_logradouro |
| 17 | `co_dim_municipio_cidadao` | `bigint` | não | FK → tb_dim_municipio |
| 18 | `co_dim_tipo_situacao_moradia` | `bigint` | não | FK → tb_dim_tipo_situacao_moradia |
| 19 | `co_dim_tipo_localizacao` | `bigint` | não | FK → tb_dim_tipo_localizacao |
| 20 | `co_dim_tipo_domicilio` | `bigint` | não | FK → tb_dim_tipo_domicilio |
| 21 | `co_dim_tipo_posse_terra` | `bigint` | não | FK → tb_dim_tipo_posse_terra |
| 22 | `co_dim_tipo_acesso_domicilio` | `bigint` | não | FK → tb_dim_tipo_acesso_domicilio |
| 23 | `co_dim_tipo_material_parede` | `bigint` | não | FK → tb_dim_tipo_material_parede |
| 24 | `co_dim_tipo_abastecimento_agua` | `bigint` | não | FK → tb_dim_tipo_abastecimento_agua |
| 25 | `co_dim_tipo_tratamento_agua` | `bigint` | não | FK → tb_dim_tipo_tratamento_agua |
| 26 | `co_dim_tipo_escoamento_sanitar` | `bigint` | não | FK → tb_dim_tipo_escoamento_sanitar |
| 27 | `co_dim_tipo_destino_lixo` | `bigint` | não | FK → tb_dim_tipo_destino_lixo |
| 28 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 29 | `st_disp_energia` | `integer` | não |  |
| 30 | `st_animal_domiciliar` | `integer` | não |  |
| 31 | `qt_animal_domiciliar` | `integer` | não |  |
| 32 | `st_animal_gato` | `integer` | não |  |
| 33 | `st_animal_cachorro` | `integer` | não |  |
| 34 | `st_animal_passaro` | `integer` | não |  |
| 35 | `st_animal_outros` | `integer` | não |  |
| 36 | `st_outros_prof_vinclds` | `integer` | não |  |
| 37 | `nu_micro_area` | `character varying(3)` | não |  |
| 38 | `st_processo_linha_tempo` | `integer` | não |  |
| 39 | `st_processo_familia` | `integer` | não |  |
| 40 | `st_familias` | `integer` | não |  |
| 41 | `ds_filtro_tipo_renda_familiar` | `character varying(4000)` | não |  |
| 42 | `nu_cep` | `character varying(33)` | não |  |
| 43 | `no_logradouro` | `character varying(288)` | não |  |
| 44 | `nu_num_logradouro` | `character varying(64)` | não |  |
| 45 | `no_complemento` | `character varying(545)` | não |  |
| 46 | `no_bairro` | `character varying(545)` | não |  |
| 47 | `no_ponto_referencia` | `character varying(200)` | não |  |
| 48 | `nu_telefone_residencia` | `character varying(64)` | não |  |
| 49 | `nu_telefone_contato` | `character varying(64)` | não |  |
| 50 | `no_instituicao_nome` | `character varying(225)` | não |  |
| 51 | `no_instituicao_cargo` | `character varying(225)` | não |  |
| 52 | `nu_instituicao_cns` | `character varying(33)` | não |  |
| 53 | `nu_instituicao_telefone` | `character varying(33)` | não |  |
| 54 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 55 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 56 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 57 | `st_gerado_automaticamente` | `integer` | não |  |
| 58 | `st_proc_operacionais` | `integer` | não |  |
| 59 | `st_processa_familita_terrtro` | `integer` | não |  |
| 60 | `nu_latitude` | `double precision` | não |  |
| 61 | `nu_longitude` | `double precision` | não |  |
| 62 | `co_dim_tipo_origem_energ_eletr` | `bigint` | não | FK → tb_dim_tipo_origem_energ_elet |
| 63 | `co_dim_tipo_endereco` | `bigint` | não | FK → tb_dim_tipo_endereco |
| 64 | `co_dim_aldeia` | `bigint` | não | FK → tb_dim_aldeia |
| 65 | `co_dim_municipio_aldeia` | `bigint` | não | FK → tb_dim_municipio |
| 66 | `nu_residencia_indigena` | `character varying(64)` | não |  |
| 67 | `st_animal_macaco` | `integer` | não |  |
| 68 | `st_animal_galinha` | `integer` | não |  |
| 69 | `st_animal_porco` | `integer` | não |  |
| 70 | `st_animal_repteis` | `integer` | não |  |
| 71 | `st_ativo` | `integer` | não |  |
