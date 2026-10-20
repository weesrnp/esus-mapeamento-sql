# tb_aplicacao_medicamento

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_aplicacao_medicamento` | `bigint` | sim | PK |
| 2 | `no_aplicacao_medicamento` | `character varying(100)` | sim |  |
| 3 | `no_aplicacao_med_filtro` | `character varying(100)` | não |  |
| 4 | `nu_frequencia_instalacao` | `integer` | não |  |

Referenciada por: `tb_receita_medicamento`
