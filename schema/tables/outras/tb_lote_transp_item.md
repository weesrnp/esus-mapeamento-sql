# tb_lote_transp_item

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lote_transp_item` | `bigint` | sim | PK |
| 2 | `co_lote_transp` | `bigint` | sim | FK → tb_lote_transp |
| 3 | `co_dado_transp` | `bigint` | sim | FK → tb_dado_transp |

Referenciada por: `tb_lote_transp_item_nodo`
