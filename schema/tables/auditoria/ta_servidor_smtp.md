# ta_servidor_smtp

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taservidorsmtp` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_servidor_smtp` | `bigint` | não |  |
| 5 | `no_host` | `character varying(255)` | não |  |
| 6 | `nu_porta` | `character varying(5)` | não |  |
| 7 | `ds_usuario` | `character varying(255)` | não |  |
| 8 | `ds_senha` | `character varying(255)` | não |  |
| 9 | `ds_email` | `character varying(255)` | não |  |
| 10 | `st_usuario_email` | `integer` | não |  |
| 11 | `st_ativo` | `integer` | não |  |
| 12 | `dt_registro` | `timestamp with time zone` | não |  |
