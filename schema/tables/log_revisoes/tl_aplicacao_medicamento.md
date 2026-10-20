# tl_aplicacao_medicamento

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_aplicacao_medicamento` | `bigint` | sim | PK |
| 4 | `no_aplicacao_medicamento` | `character varying(100)` | não |  |
| 5 | `no_aplicacao_med_filtro` | `character varying(100)` | não |  |
| 6 | `nu_frequencia_instalacao` | `integer` | não |  |
