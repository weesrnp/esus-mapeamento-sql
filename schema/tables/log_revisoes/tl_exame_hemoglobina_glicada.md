# tl_exame_hemoglobina_glicada

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_exame_hemoglobina_glicd` | `bigint` | sim | PK |
| 4 | `co_exame_requisitado` | `bigint` | não |  |
| 5 | `vl_hemoglobina_glicada` | `double precision` | não |  |
