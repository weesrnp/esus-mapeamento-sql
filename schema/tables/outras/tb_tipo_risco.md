# tb_tipo_risco

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_risco` | `bigint` | sim | PK |
| 2 | `no_risco` | `character varying(100)` | sim |  |
| 3 | `no_grupo_tipo_risco` | `character varying(255)` | sim |  |

Referenciada por: `tb_risco`
