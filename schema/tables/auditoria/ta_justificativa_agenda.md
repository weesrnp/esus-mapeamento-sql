# ta_justificativa_agenda

Tipo: tabela  
Grupo: auditoria  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tajustificativaagenda` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_justificativa_agendamnt` | `bigint` | não |  |
| 5 | `co_agendamento` | `bigint` | não |  |
| 6 | `co_responsavel_cancelamento` | `bigint` | não |  |
| 7 | `ds_justificativa` | `character varying(2000)` | não |  |
| 8 | `dt_justificativa` | `timestamp with time zone` | não |  |
| 9 | `co_origem_justificativa` | `bigint` | não |  |
| 10 | `ds_opcao_justificativa` | `character varying(44)` | não |  |
| 11 | `co_usuario` | `bigint` | não |  |
