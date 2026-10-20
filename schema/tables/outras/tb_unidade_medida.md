# tb_unidade_medida

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_unidade_medida` | `bigint` | sim | PK |
| 2 | `sg_unidade_medida` | `character varying(25)` | sim |  |
| 3 | `no_unidade_medida_filtro` | `character varying(100)` | não |  |
| 4 | `no_unidade_medida` | `character varying(100)` | sim |  |
| 5 | `no_unidade_medida_plural` | `character varying(100)` | não |  |

Referenciada por: `rl_unidade_medida_dose`, `tb_medicamento_catmat`, `tb_receita_medicamento`
