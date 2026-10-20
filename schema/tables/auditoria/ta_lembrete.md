# ta_lembrete

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_talembrete` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_lembrete` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `co_ultimo_lembrete_evolucao` | `bigint` | não |  |
| 8 | `co_prof_criador` | `bigint` | não |  |
