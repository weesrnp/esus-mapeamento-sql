# tl_requisicao_exame

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_requisicao_exame` | `bigint` | sim | PK |
| 4 | `dt_requisicao` | `timestamp without time zone` | não |  |
| 5 | `dt_ultima_menstruacao` | `timestamp without time zone` | não |  |
| 6 | `ds_justificativa_procedimento` | `character varying(500)` | não |  |
| 7 | `co_atend_prof` | `bigint` | não |  |
| 8 | `co_cid10` | `bigint` | não |  |
| 9 | `tp_exame` | `integer` | não |  |
| 10 | `ds_observacao` | `character varying(500)` | não |  |
