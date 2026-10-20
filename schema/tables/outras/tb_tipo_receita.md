# tb_tipo_receita

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_receita` | `bigint` | sim | PK |
| 2 | `no_tipo_receita` | `character varying(100)` | sim |  |
| 3 | `no_identificador` | `character varying(100)` | sim |  |

Referenciada por: `tb_lista_medicamento`, `tb_receita_medicamento`
