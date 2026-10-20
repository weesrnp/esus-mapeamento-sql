# tb_situacao_agendado

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_situacao_agendado` | `bigint` | sim | PK |
| 2 | `no_situacao_agendado` | `character varying(50)` | não |  |
| 3 | `no_identificador` | `character varying(30)` | sim |  |

Referenciada por: `tb_agendado`
