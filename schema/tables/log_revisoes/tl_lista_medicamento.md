# tl_lista_medicamento

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_lista_medicamento` | `bigint` | sim | PK |
| 4 | `no_lista_medicamento` | `character varying(100)` | não |  |
| 5 | `tp_receita` | `bigint` | não |  |
| 6 | `nu_dias_validade` | `integer` | não |  |
