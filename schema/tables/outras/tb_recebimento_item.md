# tb_recebimento_item

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_receb_item` | `bigint` | sim | PK |
| 2 | `co_receb_lote` | `bigint` | sim | FK → tb_recebimento_lote |
| 3 | `st_dado_recebido` | `bigint` | não |  |
| 4 | `tp_dado_transp` | `bigint` | não |  |
| 5 | `co_unico_dado_serializado` | `character varying(255)` | não |  |
| 6 | `nu_cnes_dado_serializado` | `character varying(255)` | não |  |
| 7 | `nu_versao_dado_serializado` | `character varying(10)` | não |  |
| 8 | `no_arquivo` | `character varying(255)` | não |  |

Referenciada por: `tb_dado_transp_recebido_online`
