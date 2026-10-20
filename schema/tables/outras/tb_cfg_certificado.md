# tb_cfg_certificado

Tipo: tabela  
Grupo: outras  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cfg_certificado` | `bigint` | sim | PK |
| 2 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
| 3 | `co_ator_papel` | `bigint` | sim | FK → tb_adm_municipal |
| 4 | `no_certificado` | `character varying(255)` | sim |  |
| 5 | `ds_senha_certificado` | `character varying(255)` | sim |  |
| 6 | `dt_inclusao` | `timestamp without time zone` | sim |  |
| 7 | `dt_habilitacao` | `timestamp without time zone` | sim |  |
| 8 | `dt_validade_certificado` | `timestamp without time zone` | sim |  |
| 9 | `co_identificador_solicitante` | `character varying(255)` | não |  |
| 10 | `st_habilitado_rnds` | `integer` | sim |  |
| 11 | `st_habilitado_cadsus` | `integer` | sim |  |
| 12 | `st_habilitado_farmacia` | `integer` | sim |  |
