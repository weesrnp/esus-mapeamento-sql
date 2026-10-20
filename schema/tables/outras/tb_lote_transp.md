# tb_lote_transp

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lote_transp` | `bigint` | sim | PK |
| 2 | `dt_criacao` | `timestamp without time zone` | sim |  |
| 3 | `co_ibge` | `character varying(10)` | não |  |
| 4 | `st_lote_retransmissao` | `integer` | não |  |
| 5 | `ds_filtro_cnes_ficha` | `character varying(7)` | não |  |
| 6 | `dt_filtro_competencia` | `timestamp without time zone` | não |  |
| 7 | `dt_filtro_inicio` | `timestamp without time zone` | não |  |
| 8 | `dt_filtro_fim` | `timestamp without time zone` | não |  |
| 9 | `dt_ultima_tentativa` | `timestamp without time zone` | não |  |

Referenciada por: `tb_lote_transp_historico_exprt`, `tb_lote_transp_item`, `tb_lote_transp_nodo`
