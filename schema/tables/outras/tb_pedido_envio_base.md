# tb_pedido_envio_base

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_pedido_envio` | `bigint` | sim | PK |
| 2 | `no_instalacao` | `character varying(255)` | sim |  |
| 3 | `ds_chave` | `character varying(255)` | não |  |
| 4 | `ds_link_instalacao` | `character varying(255)` | sim |  |
| 5 | `st_solicitacao` | `character varying(60)` | sim |  |
| 6 | `st_login_ativo` | `integer` | sim |  |
| 7 | `co_unico_solicitacao` | `character varying(36)` | não |  |
| 8 | `dt_solicitacao` | `timestamp without time zone` | sim |  |
| 9 | `dt_fim_unificacao_base` | `timestamp without time zone` | não |  |
