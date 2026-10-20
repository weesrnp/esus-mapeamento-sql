# tb_servidor_smtp

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_servidor_smtp` | `bigint` | sim | PK |
| 2 | `no_host` | `character varying(255)` | não |  |
| 3 | `nu_porta` | `character varying(5)` | não |  |
| 4 | `ds_usuario` | `character varying(255)` | não |  |
| 5 | `ds_senha` | `character varying(255)` | não |  |
| 6 | `ds_email` | `character varying(255)` | não |  |
| 7 | `st_usuario_email` | `integer` | não |  |
| 8 | `st_ativo` | `integer` | não |  |
| 9 | `dt_registro` | `timestamp with time zone` | não |  |
