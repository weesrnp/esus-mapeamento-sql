# tb_dado_transp_recebido_online

Tipo: tabela  
Grupo: outras  
Colunas: 18

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dado_transp_receb_onlin` | `bigint` | sim | PK |
| 2 | `dt_recebimento` | `date` | sim |  |
| 3 | `nu_lote_originadora` | `bigint` | não |  |
| 4 | `co_envio` | `bigint` | não |  |
| 5 | `ds_processamento_mensagem` | `text` | não |  |
| 6 | `co_ibge_dado_serializado` | `character varying(255)` | não |  |
| 7 | `co_unico_dado_serializado` | `character varying(255)` | não |  |
| 8 | `nu_versao_dado_serializado` | `character varying(255)` | não |  |
| 9 | `nu_cnes_dado_serializado` | `character varying(255)` | não |  |
| 10 | `nu_ine_dado_serializado` | `character varying(255)` | não |  |
| 11 | `im_dado_serializado` | `bytea` | não |  |
| 12 | `tp_dado_transp` | `bigint` | sim | FK → tb_tipo_dado_transp |
| 13 | `tp_origem_dado_transp` | `bigint` | sim | FK → tb_tipo_origem_dado_transp |
| 14 | `im_info_instalacao_originadora` | `bytea` | não |  |
| 15 | `im_info_instalacao_remetente` | `bytea` | não |  |
| 16 | `co_recebimento_item` | `bigint` | não | FK → tb_recebimento_item |
| 17 | `nu_revisao` | `integer` | não |  |
| 18 | `st_cancelado` | `integer` | não |  |
