# tb_origem

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_origem` | `bigint` | sim | PK |
| 2 | `ds_origem` | `character varying(30)` | sim |  |
| 3 | `no_identificador` | `character varying(30)` | sim |  |

Referenciada por: `tb_agendado`, `tb_justificativa_agenda`
