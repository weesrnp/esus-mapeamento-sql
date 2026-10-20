# tb_videochamada

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_videochamada` | `bigint` | sim | PK |
| 2 | `co_unico_videochamada` | `character varying(36)` | sim |  |
| 3 | `dt_inicio` | `timestamp without time zone` | não |  |
| 4 | `dt_fim` | `timestamp without time zone` | não |  |

Referenciada por: `tb_agend_compartilhado`
