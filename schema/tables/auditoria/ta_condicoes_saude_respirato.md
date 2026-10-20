# ta_condicoes_saude_respirato

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacondicoessauderespirt` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_condicoes_saude_auto` | `bigint` | não |  |
| 5 | `co_doenca_respiratoria` | `bigint` | não |  |
