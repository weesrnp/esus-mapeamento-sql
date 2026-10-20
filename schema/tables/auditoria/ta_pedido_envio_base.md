# ta_pedido_envio_base

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tapedidoenviobase` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_pedido_envio` | `bigint` | não |  |
| 5 | `no_instalacao` | `character varying(255)` | não |  |
| 6 | `ds_chave` | `character varying(255)` | não |  |
| 7 | `ds_link_instalacao` | `character varying(255)` | não |  |
| 8 | `st_solicitacao` | `character varying(60)` | não |  |
| 9 | `st_login_ativo` | `integer` | não |  |
| 10 | `co_unico_solicitacao` | `character varying(36)` | não |  |
| 11 | `dt_solicitacao` | `timestamp without time zone` | não |  |
| 12 | `dt_fim_unificacao_base` | `timestamp without time zone` | não |  |
