# tl_exame_requisitado

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_exame_requisitado` | `bigint` | sim | PK |
| 4 | `dt_resultado` | `timestamp without time zone` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_proced` | `bigint` | não |  |
| 7 | `co_requisicao_exame` | `bigint` | não |  |
| 8 | `co_atend_prof_resultado` | `bigint` | não |  |
| 9 | `co_prontuario` | `bigint` | não |  |
| 10 | `st_conferido` | `integer` | não |  |
| 11 | `dt_realizacao` | `timestamp without time zone` | não |  |
| 12 | `dt_solicitacao` | `timestamp without time zone` | não |  |
| 13 | `co_proced_exame_especifico` | `bigint` | não |  |
| 14 | `ds_resultado` | `text` | não |  |
| 15 | `ds_observacao` | `character varying(300)` | não |  |
