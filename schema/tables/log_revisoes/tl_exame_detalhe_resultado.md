# tl_exame_detalhe_resultado

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_exame_detalhe_resultado` | `bigint` | sim | PK |
| 4 | `co_exame_requisitado` | `bigint` | não |  |
| 5 | `co_proced_exame_detalhe` | `bigint` | não |  |
| 6 | `tp_resultado` | `bigint` | não |  |
| 7 | `nu_resultado` | `double precision` | não |  |
| 8 | `ds_resultado` | `character varying(800)` | não |  |
