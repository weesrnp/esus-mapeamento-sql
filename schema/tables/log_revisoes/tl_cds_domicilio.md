# tl_cds_domicilio

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 32

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cds_domicilio` | `bigint` | sim | PK |
| 4 | `tp_logradouro` | `bigint` | não |  |
| 5 | `ds_complemento` | `character varying(256)` | não |  |
| 6 | `co_municipio` | `bigint` | não |  |
| 7 | `no_logradouro` | `character varying(256)` | não |  |
| 8 | `no_bairro` | `character varying(256)` | não |  |
| 9 | `ds_cep` | `character varying(8)` | não |  |
| 10 | `nu_fone_referencia` | `character varying(255)` | não |  |
| 11 | `nu_fone_residencia` | `character varying(255)` | não |  |
| 12 | `nu_domicilio` | `character varying(255)` | não |  |
| 13 | `co_unico_domicilio` | `character varying(96)` | não |  |
| 14 | `dt_ultima_atualizacao` | `timestamp with time zone` | não |  |
| 15 | `qt_referencia` | `bigint` | não |  |
| 16 | `st_sem_numero` | `integer` | não |  |
| 17 | `co_uf` | `bigint` | não |  |
| 18 | `nu_ine` | `character varying(255)` | não |  |
| 19 | `nu_cnes` | `character varying(255)` | não |  |
| 20 | `co_unico_ultima_ficha` | `character varying(96)` | não |  |
| 21 | `nu_micro_area` | `character varying(3)` | não |  |
| 22 | `st_fora_area` | `integer` | não |  |
| 23 | `tp_cds_imovel` | `bigint` | não |  |
| 24 | `ds_ponto_referencia` | `character varying(255)` | não |  |
| 25 | `no_instituicao_permanencia` | `character varying(255)` | não |  |
| 26 | `st_outros_prof_vinculados` | `integer` | não |  |
| 27 | `no_responsavel_tecnico` | `character varying(255)` | não |  |
| 28 | `nu_cns_responsavel_tecnico` | `character varying(15)` | não |  |
| 29 | `no_cargo_instituicao` | `character varying(255)` | não |  |
| 30 | `nu_contato_responsavel_tecnico` | `character varying(255)` | não |  |
| 31 | `nu_latitude` | `double precision` | não |  |
| 32 | `nu_longitude` | `double precision` | não |  |
