# tb_processo

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_processo` | `bigint` | sim | PK |
| 2 | `st_processo` | `character varying(100)` | sim |  |
| 3 | `dt_inicio` | `timestamp without time zone` | sim |  |

Referenciada por: `tb_importacao_cnes`
