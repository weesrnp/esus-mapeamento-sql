# tl_qst_orientacao_prof

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_qst_orientacao_prof` | `bigint` | sim | PK |
| 4 | `ds_orientacao_prof` | `character varying(1000)` | não |  |
