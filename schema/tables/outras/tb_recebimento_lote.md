# tb_recebimento_lote

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_receb_lote` | `bigint` | sim | PK |
| 2 | `dt_recebimento` | `timestamp with time zone` | não |  |
| 3 | `nu_lote_originadora` | `bigint` | não |  |
| 4 | `no_responsavel_envio` | `character varying(256)` | não |  |
| 5 | `no_responsavel_envio_filtro` | `character varying(256)` | não |  |
| 6 | `nu_identificador_responsavel` | `character varying(20)` | não |  |
| 7 | `tp_origem_dado_recebido` | `bigint` | não |  |

Referenciada por: `rl_lote_credencial_integracao`, `tb_recebimento_item`
