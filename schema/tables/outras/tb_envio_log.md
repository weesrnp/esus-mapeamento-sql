# tb_envio_log

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_envio_log` | `bigint` | sim | PK |
| 2 | `data` | `timestamp with time zone` | não |  |
| 3 | `st_status_envio` | `integer` | não |  |
| 4 | `mensagem` | `character varying(255)` | não |  |
| 5 | `file_name` | `character varying(255)` | não |  |
