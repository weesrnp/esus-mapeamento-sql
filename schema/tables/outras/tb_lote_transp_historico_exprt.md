# tb_lote_transp_historico_exprt

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lote_transp_historc_exp` | `bigint` | sim | PK |
| 2 | `co_lote_transp` | `bigint` | não | FK → tb_lote_transp |
| 3 | `no_profissional` | `character varying(250)` | não |  |
| 4 | `no_cbo` | `character varying(255)` | não |  |
| 5 | `dt_exportacao` | `timestamp without time zone` | não |  |
