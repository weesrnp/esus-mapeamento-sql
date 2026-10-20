# ta_proced_grupo_exame

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taprocedgrupoexame` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_proced_grupo_exame` | `bigint` | não |  |
| 5 | `co_grupo_exame` | `bigint` | não |  |
| 6 | `co_proced` | `bigint` | não |  |
