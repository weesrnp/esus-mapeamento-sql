# tl_evolucao_plano_ciap

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_evolucao_plano_ciap` | `bigint` | sim | PK |
| 4 | `co_atend_prof` | `bigint` | não |  |
| 5 | `co_ciap` | `bigint` | não |  |
| 6 | `ds_nota` | `character varying(400)` | não |  |
| 7 | `co_proced` | `bigint` | não |  |
