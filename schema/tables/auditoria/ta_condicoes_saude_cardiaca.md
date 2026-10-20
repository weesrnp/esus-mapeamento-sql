# ta_condicoes_saude_cardiaca

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacondicoessaudecardiac` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_condicoes_saude_auto` | `bigint` | não |  |
| 5 | `co_doenca_cardiaca` | `bigint` | não |  |
