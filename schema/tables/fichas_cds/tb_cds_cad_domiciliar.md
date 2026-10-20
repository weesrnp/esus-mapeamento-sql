# tb_cds_cad_domiciliar

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 48

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_cad_domiciliar` | `bigint` | sim | PK |
| 2 | `tp_logradouro` | `bigint` | não | FK → tb_tipo_logradouro |
| 3 | `no_logradouro` | `character varying(256)` | não |  |
| 4 | `nu_domicilio` | `character varying(255)` | não |  |
| 5 | `ds_complemento` | `character varying(256)` | não |  |
| 6 | `no_bairro` | `character varying(256)` | não |  |
| 7 | `co_municipio` | `bigint` | não | FK → tb_localidade |
| 8 | `nu_cep` | `character varying(255)` | não |  |
| 9 | `nu_fone_residencia` | `character varying(255)` | não |  |
| 10 | `nu_fone_referencia` | `character varying(255)` | não |  |
| 11 | `ds_rg_recusa_cad` | `character varying(255)` | não |  |
| 12 | `dt_cad_domiciliar` | `timestamp without time zone` | não |  |
| 13 | `st_ficha` | `integer` | não |  |
| 14 | `tp_cds_origem` | `bigint` | não |  |
| 15 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 16 | `st_recusa_cad` | `integer` | não |  |
| 17 | `co_localidade_origem` | `bigint` | não | FK → tb_localidade |
| 18 | `co_uf` | `bigint` | não | FK → tb_uf |
| 19 | `no_logradouro_filtro` | `character varying(256)` | não |  |
| 20 | `st_atualizacao` | `integer` | não |  |
| 21 | `co_cds_prof_cadastrante` | `bigint` | sim | FK → tb_cds_prof |
| 22 | `co_unico_domicilio` | `character varying(96)` | não |  |
| 23 | `st_sem_numero` | `integer` | não |  |
| 24 | `st_versao_atual` | `integer` | não |  |
| 25 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 26 | `ds_ponto_referencia` | `character varying(255)` | não |  |
| 27 | `no_instituicao_permanencia` | `character varying(255)` | não |  |
| 28 | `st_outros_prof_vinculados` | `integer` | não |  |
| 29 | `no_responsavel_tecnico` | `character varying(255)` | não |  |
| 30 | `nu_cns_responsavel_tecnico` | `character varying(15)` | não |  |
| 31 | `no_cargo_instituicao` | `character varying(255)` | não |  |
| 32 | `nu_fone_responsavel_tecnico` | `character varying(255)` | não |  |
| 33 | `tp_cds_imovel` | `bigint` | não | FK → tb_cds_tipo_imovel |
| 34 | `nu_micro_area` | `character varying(3)` | não |  |
| 35 | `st_fora_area` | `integer` | não |  |
| 36 | `ds_complemento_filtro` | `character varying(255)` | não |  |
| 37 | `st_gerado_automaticamente` | `integer` | não |  |
| 38 | `nu_latitude` | `double precision` | não |  |
| 39 | `nu_longitude` | `double precision` | não |  |
| 40 | `co_tipo_endereco` | `bigint` | não | FK → tb_tipo_endereco |
| 41 | `co_dsei` | `bigint` | não | FK → tb_dsei |
| 42 | `co_polo_base` | `bigint` | não | FK → tb_polo_base |
| 43 | `co_aldeia` | `bigint` | não | FK → tb_aldeia |
| 44 | `co_localidade_aldeia` | `bigint` | não | FK → tb_localidade |
| 45 | `co_uf_aldeia` | `bigint` | não | FK → tb_uf |
| 46 | `nu_residencia_indigena` | `character varying(7)` | não |  |
| 47 | `st_microarea_polo_base` | `integer` | não |  |
| 48 | `st_ativo` | `integer` | não |  |

Referenciada por: `tb_cds_domicilio_familia`, `tb_cds_domicilio_resposta`
