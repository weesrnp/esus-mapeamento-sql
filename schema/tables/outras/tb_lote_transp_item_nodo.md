# tb_lote_transp_item_nodo

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lote_transp_item_nodo` | `bigint` | sim | PK |
| 2 | `co_lote_transp_item` | `bigint` | sim | FK → tb_lote_transp_item |
| 3 | `co_nodo` | `bigint` | sim | FK → tb_nodo |
| 4 | `ds_ultima_tentativa` | `text` | não |  |
| 5 | `dt_ultima_tentativa` | `timestamp without time zone` | não |  |
| 6 | `st_enviado` | `integer` | sim |  |
