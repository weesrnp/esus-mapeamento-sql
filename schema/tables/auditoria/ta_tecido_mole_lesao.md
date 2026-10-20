# ta_tecido_mole_lesao

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tatecidomolelesao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_rl_tecido_mole_lesao` | `bigint` | não |  |
| 5 | `co_tecido_mole` | `bigint` | não |  |
| 6 | `co_lesao` | `bigint` | não |  |
