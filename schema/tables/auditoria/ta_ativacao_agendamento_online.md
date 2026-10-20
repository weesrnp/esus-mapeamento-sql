# ta_ativacao_agendamento_online

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taativacaoagendamentnln` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_ativacao_agendamento_on` | `bigint` | não |  |
| 5 | `co_prof` | `bigint` | não |  |
| 6 | `dt_evento` | `timestamp with time zone` | não |  |
| 7 | `st_ativado` | `integer` | não |  |
