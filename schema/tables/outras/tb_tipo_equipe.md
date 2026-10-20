# tb_tipo_equipe

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tipo_equipe` | `bigint` | sim | PK |
| 2 | `sg_tipo_equipe` | `character varying(30)` | sim |  |
| 3 | `no_tipo_equipe` | `character varying(200)` | sim |  |
| 4 | `sg_tipo_equipe_filtro` | `character varying(30)` | não |  |
| 5 | `no_tipo_equipe_filtro` | `character varying(200)` | não |  |
| 6 | `nu_ms` | `character varying(4)` | sim |  |
| 7 | `ds_tp_equipe` | `character varying(4)` | não |  |

Referenciada por: `tb_equipe`
