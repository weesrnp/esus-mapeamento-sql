# tb_retificacao_atend

Tipo: tabela  
Grupo: outras  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_retificacao_atend` | `bigint` | sim | PK |
| 2 | `bl_conteudo_atendimento` | `bytea` | não |  |
| 3 | `co_unico_atend_prof` | `character varying(96)` | não |  |
| 4 | `co_lotacao` | `bigint` | não | FK → tb_lotacao |
| 5 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 6 | `dt_exclusao` | `timestamp without time zone` | não |  |
| 7 | `ds_justificativa` | `character varying(200)` | não |  |
| 8 | `bl_impressao_atend_inativo` | `bytea` | não |  |
| 9 | `dt_inicio_atend_prof` | `timestamp without time zone` | não |  |
| 10 | `co_tipo_atend_prof` | `bigint` | sim | FK → tb_tipo_atend_prof |
| 11 | `co_unico_atend_prof_retificado` | `character varying(96)` | não |  |
| 12 | `co_auditoria_evento_retificado` | `bigint` | não | FK → tb_auditoria_evento |
