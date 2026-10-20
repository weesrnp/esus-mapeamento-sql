# tb_tipo_participacao_atend

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_participacao_atend` | `bigint` | sim | PK |
| 2 | `no_tipo_participacao_atend` | `character varying(255)` | sim |  |
| 3 | `st_assincrono` | `integer` | sim |  |
| 4 | `st_tic` | `integer` | sim |  |

Referenciada por: `tb_atend_prof`
