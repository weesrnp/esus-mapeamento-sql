# tb_receita_tipo_frequencia

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_receita_tipo_frequencia` | `bigint` | sim | PK |
| 2 | `no_tipo_frequencia` | `character varying(255)` | sim |  |
| 3 | `no_identificador` | `character varying(255)` | sim |  |

Referenciada por: `tb_receita_medicamento`
