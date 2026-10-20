# tb_classificacao_risco

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_classificacao_risco` | `bigint` | sim | PK |
| 2 | `no_classificacao_risco` | `character varying(50)` | não |  |
| 3 | `no_identificador` | `character varying(30)` | sim |  |
| 4 | `nu_ordem` | `bigint` | não |  |

Referenciada por: `tb_atend`, `tb_atend_prof`
