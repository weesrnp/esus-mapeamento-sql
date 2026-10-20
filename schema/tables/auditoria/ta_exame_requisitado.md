# ta_exame_requisitado

Tipo: tabela  
Grupo: auditoria  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taexamerequisitado` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_exame_requisitado` | `bigint` | não |  |
| 5 | `st_conferido` | `integer` | não |  |
| 6 | `dt_resultado` | `timestamp without time zone` | não |  |
| 7 | `co_atend_prof_solicitacao` | `bigint` | não |  |
| 8 | `co_proced` | `bigint` | não |  |
| 9 | `co_requisicao_exame` | `bigint` | não |  |
| 10 | `co_atend_prof_resultado` | `bigint` | não |  |
| 11 | `co_prontuario` | `bigint` | não |  |
| 12 | `dt_realizacao` | `timestamp without time zone` | não |  |
| 13 | `dt_solicitacao` | `timestamp without time zone` | não |  |
| 14 | `co_proced_exame_especifico` | `bigint` | não |  |
| 15 | `ds_resultado` | `text` | não |  |
| 16 | `ds_observacao` | `character varying(300)` | não |  |
| 17 | `co_arquivo_atendprof` | `bigint` | não |  |
