# tb_refresh_token

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_token` | `character varying(36)` | sim | PK |
| 2 | `no_principal` | `character varying(100)` | sim |  |
| 3 | `dt_criacao` | `timestamp without time zone` | sim |  |
| 4 | `dt_expiracao` | `timestamp without time zone` | sim |  |
| 5 | `ds_api_consumer` | `character varying(50)` | não |  |
