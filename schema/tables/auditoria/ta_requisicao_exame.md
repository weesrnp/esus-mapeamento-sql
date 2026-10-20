# ta_requisicao_exame

Tipo: tabela  
Grupo: auditoria  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tarequisicaoexame` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_requisicao_exame` | `bigint` | não |  |
| 5 | `dt_requisicao` | `timestamp without time zone` | não |  |
| 6 | `dt_ultima_menstruacao` | `timestamp without time zone` | não |  |
| 7 | `ds_justificativa_procedimento` | `character varying(2000)` | não |  |
| 8 | `co_atend_prof` | `bigint` | não |  |
| 9 | `co_cid10` | `bigint` | não |  |
| 10 | `tp_exame` | `integer` | não |  |
| 11 | `ds_observacao` | `character varying(500)` | não |  |
