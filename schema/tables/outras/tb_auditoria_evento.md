# tb_auditoria_evento

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_auditoria_evento` | `bigint` | sim | PK |
| 2 | `dt_evento` | `timestamp with time zone` | não |  |
| 3 | `tp_evento` | `integer` | não |  |
| 4 | `ds_componente_gerador` | `character varying(1000)` | não |  |
| 5 | `co_usuario` | `bigint` | não |  |
| 6 | `ds_detalhes` | `text` | não |  |
| 7 | `tp_registro_afetado` | `integer` | não |  |
| 8 | `co_registro_afetado` | `text` | não |  |

Referenciada por: `tb_retificacao_atend`
