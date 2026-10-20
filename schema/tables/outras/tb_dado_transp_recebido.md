# tb_dado_transp_recebido

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dado_transp_recebido` | `bigint` | sim | PK |
| 2 | `co_dado_transp` | `bigint` | não | FK → tb_dado_transp |
| 3 | `co_info_instal_remetente` | `bigint` | não | FK → tb_dado_recebido_info_instalac |
| 4 | `co_info_instal_originadora` | `bigint` | não | FK → tb_dado_recebido_info_instalac |
| 5 | `nu_lote_originadora` | `bigint` | não |  |
| 6 | `dt_recebimento` | `timestamp without time zone` | não |  |
| 7 | `dt_processamento` | `timestamp without time zone` | não |  |
| 8 | `st_dado_recebido` | `bigint` | não | FK → tb_situacao_dado_recebido |
| 9 | `ds_processamento_mensagem` | `text` | não |  |
