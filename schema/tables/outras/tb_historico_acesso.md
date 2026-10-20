# tb_historico_acesso

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_hist_acesso` | `bigint` | sim | PK |
| 2 | `co_usuario` | `bigint` | não | FK → tb_usuario |
| 3 | `dt_acesso` | `timestamp with time zone` | sim |  |
| 4 | `st_sucesso` | `integer` | sim |  |
| 5 | `ds_cliente_acesso` | `character varying(255)` | sim |  |
| 6 | `ds_local_acesso` | `character varying(100)` | sim |  |
| 7 | `co_ip` | `character varying(100)` | sim |  |
