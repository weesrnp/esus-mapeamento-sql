# tb_tipo_localidade

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_localidade` | `bigint` | sim | PK |
| 2 | `no_tipo_localidade` | `character varying(100)` | sim |  |
| 3 | `sg_tipo_localidade` | `character varying(1)` | sim |  |
| 4 | `no_identificador` | `character varying(30)` | não |  |

Referenciada por: `tb_localidade`
