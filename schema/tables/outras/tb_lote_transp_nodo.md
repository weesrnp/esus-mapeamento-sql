# tb_lote_transp_nodo

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lote_transp_nodo` | `bigint` | sim | PK |
| 2 | `co_lote_transp` | `bigint` | sim | FK → tb_lote_transp |
| 3 | `co_nodo` | `bigint` | sim | FK → tb_nodo |
| 4 | `tp_situacao_lote_transp_nodo` | `bigint` | não | FK → tb_situacao_lote_transp_nodo |
| 5 | `dt_ultima_tentativa` | `timestamp without time zone` | não |  |
