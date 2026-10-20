# ta_perfil

Tipo: tabela  
Grupo: auditoria  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taperfil` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_perfil` | `bigint` | não |  |
| 5 | `no_perfil` | `character varying(100)` | não |  |
| 6 | `no_perfil_filtro` | `character varying(50)` | não |  |
| 7 | `qt_referencia` | `bigint` | não |  |
| 8 | `co_localidade` | `bigint` | não |  |
| 9 | `no_perfil_padrao` | `character varying(100)` | não |  |
| 10 | `st_ativo` | `integer` | não |  |
| 11 | `no_tipo_perfil` | `character varying(100)` | não |  |
