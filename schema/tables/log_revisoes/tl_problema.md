# tl_problema

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_problema` | `bigint` | sim | PK |
| 4 | `dt_registro` | `timestamp without time zone` | não |  |
| 5 | `ds_outro` | `character varying(255)` | não |  |
| 6 | `ds_problema_filtro` | `character varying(255)` | não |  |
| 7 | `co_ciap` | `bigint` | não |  |
| 8 | `co_cid10` | `bigint` | não |  |
| 9 | `co_ultimo_problema_evolucao` | `bigint` | não |  |
| 10 | `co_prontuario` | `bigint` | não |  |
| 11 | `co_unico_problema` | `bigint` | não |  |
