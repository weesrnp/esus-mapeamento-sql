# tl_cds_cad_domiciliar

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 50

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_prof_cadastrante` | `bigint` | não |  |
| 2 | `co_seq_cds_cad_domiciliar` | `bigint` | sim | PK |
| 3 | `co_unico_ficha` | `character varying(96)` | não |  |
| 4 | `ds_rg_recusa_cad` | `character varying(255)` | não |  |
| 5 | `dt_cad_domiciliar` | `timestamp without time zone` | não |  |
| 6 | `st_ficha` | `integer` | não |  |
| 7 | `st_recusa_cad` | `integer` | não |  |
| 8 | `tp_cds_origem` | `bigint` | não |  |
| 9 | `no_bairro` | `character varying(256)` | não |  |
| 10 | `nu_cep` | `character varying(255)` | não |  |
| 11 | `ds_complemento` | `character varying(256)` | não |  |
| 12 | `nu_fone_referencia` | `character varying(255)` | não |  |
| 13 | `nu_fone_residencia` | `character varying(255)` | não |  |
| 14 | `no_logradouro` | `character varying(256)` | não |  |
| 15 | `nu_domicilio` | `character varying(255)` | não |  |
| 16 | `co_municipio` | `bigint` | não |  |
| 17 | `tp_logradouro` | `bigint` | não |  |
| 18 | `co_revisao` | `bigint` | sim | PK |
| 19 | `co_tipo_revisao` | `integer` | não |  |
| 20 | `co_localidade_origem` | `bigint` | não |  |
| 21 | `co_uf` | `bigint` | não |  |
| 22 | `no_logradouro_filtro` | `character varying(256)` | não |  |
| 23 | `st_atualizacao` | `integer` | não |  |
| 24 | `co_unico_domicilio` | `character varying(96)` | não |  |
| 25 | `st_sem_numero` | `integer` | não |  |
| 26 | `st_versao_atual` | `integer` | não |  |
| 27 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 28 | `ds_ponto_referencia` | `character varying(255)` | não |  |
| 29 | `no_instituicao_permanencia` | `character varying(255)` | não |  |
| 30 | `st_outros_prof_vinculados` | `integer` | não |  |
| 31 | `no_responsavel_tecnico` | `character varying(255)` | não |  |
| 32 | `nu_cns_responsavel_tecnico` | `character varying(15)` | não |  |
| 33 | `no_cargo_instituicao` | `character varying(255)` | não |  |
| 34 | `nu_fone_responsavel_tecnico` | `character varying(255)` | não |  |
| 35 | `tp_cds_imovel` | `bigint` | não |  |
| 36 | `nu_micro_area` | `character varying(3)` | não |  |
| 37 | `st_fora_area` | `integer` | não |  |
| 38 | `ds_complemento_filtro` | `character varying(255)` | não |  |
| 39 | `st_gerado_automaticamente` | `integer` | não |  |
| 40 | `nu_latitude` | `double precision` | não |  |
| 41 | `nu_longitude` | `double precision` | não |  |
| 42 | `co_tipo_endereco` | `bigint` | não |  |
| 43 | `co_dsei` | `bigint` | não |  |
| 44 | `co_polo_base` | `bigint` | não |  |
| 45 | `co_aldeia` | `bigint` | não |  |
| 46 | `co_localidade_aldeia` | `bigint` | não |  |
| 47 | `co_uf_aldeia` | `bigint` | não |  |
| 48 | `nu_residencia_indigena` | `character varying(7)` | não |  |
| 49 | `st_microarea_polo_base` | `integer` | não |  |
| 50 | `st_ativo` | `integer` | não |  |
