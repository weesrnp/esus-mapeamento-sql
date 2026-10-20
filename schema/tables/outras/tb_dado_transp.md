# tb_dado_transp

Tipo: tabela  
Grupo: outras  
Colunas: 14

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dado_transp` | `bigint` | sim | PK |
| 2 | `tp_origem_dado_transp` | `bigint` | sim | FK → tb_tipo_origem_dado_transp |
| 3 | `tp_dado_transp` | `bigint` | sim |  |
| 4 | `co_unico_dado_serializado` | `character varying(96)` | sim |  |
| 5 | `co_ibge_dado_serializado` | `character varying(10)` | não |  |
| 6 | `nu_versao_dado_serializado` | `character varying(10)` | não |  |
| 7 | `nu_cnes_dado_serializado` | `character varying(20)` | não |  |
| 8 | `nu_ine_dado_serializado` | `character varying(20)` | não |  |
| 9 | `im_dado_serializado` | `bytea` | sim |  |
| 10 | `st_validado` | `integer` | não |  |
| 11 | `co_dado_recebido_competencia` | `bigint` | não | FK → tb_dado_recebido_competencia |
| 12 | `co_unico_ficha` | `character varying(96)` | não |  |
| 13 | `nu_revisao` | `integer` | não |  |
| 14 | `st_cancelado` | `integer` | não |  |

Referenciada por: `tb_dado_transp_recebido`, `tb_lote_transp_item`, `tb_processamento_dom_cid`, `tb_processamento_hist_cds`, `tb_relatorio_processamento`
