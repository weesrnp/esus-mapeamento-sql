# ta_cfg_certificado

Tipo: tabela  
Grupo: auditoria  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacfgcertificado` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_cfg_certificado` | `bigint` | não |  |
| 5 | `co_localidade` | `bigint` | não |  |
| 6 | `co_ator_papel` | `bigint` | não |  |
| 7 | `no_certificado` | `character varying(255)` | não |  |
| 8 | `ds_senha_certificado` | `character varying(255)` | não |  |
| 9 | `dt_inclusao` | `timestamp without time zone` | não |  |
| 10 | `dt_habilitacao` | `timestamp without time zone` | não |  |
| 11 | `dt_validade_certificado` | `timestamp without time zone` | não |  |
| 12 | `co_identificador_solicitante` | `character varying(255)` | não |  |
| 13 | `st_habilitado_rnds` | `integer` | não |  |
| 14 | `st_habilitado_cadsus` | `integer` | não |  |
| 15 | `st_habilitado_farmacia` | `integer` | não |  |
