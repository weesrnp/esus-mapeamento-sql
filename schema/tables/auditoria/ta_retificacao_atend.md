# ta_retificacao_atend

Tipo: tabela  
Grupo: auditoria  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taretificacaoatend` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_retificacao_atend` | `bigint` | não |  |
| 5 | `bl_conteudo_atendimento` | `bytea` | não |  |
| 6 | `co_unico_atend_prof` | `character varying(96)` | não |  |
| 7 | `co_lotacao` | `bigint` | não |  |
| 8 | `co_prontuario` | `bigint` | não |  |
| 9 | `dt_exclusao` | `timestamp without time zone` | não |  |
| 10 | `ds_justificativa` | `character varying(200)` | não |  |
| 11 | `bl_impressao_atend_inativo` | `bytea` | não |  |
| 12 | `dt_inicio_atend_prof` | `timestamp without time zone` | não |  |
| 13 | `co_tipo_atend_prof` | `bigint` | não |  |
| 14 | `co_unico_atend_prof_retificado` | `character varying(96)` | não |  |
| 15 | `co_auditoria_evento_retificado` | `bigint` | não |  |
