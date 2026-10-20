# ta_adm_municipal

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taadmmunicipal` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_ator_papel` | `bigint` | não |  |
| 5 | `co_localidade` | `bigint` | não |  |
| 6 | `ds_autorizacao` | `character varying(225)` | não |  |
| 7 | `st_instalacao_terminada` | `integer` | não |  |
| 8 | `dt_inativacao` | `timestamp without time zone` | não |  |
| 9 | `dt_adicao` | `timestamp without time zone` | não |  |
