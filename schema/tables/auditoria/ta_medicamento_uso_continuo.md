# ta_medicamento_uso_continuo

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tamedicamentousocontinu` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_medicament_uso_continuo` | `bigint` | não |  |
| 5 | `co_medicamento` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `co_ultima_receita_medicamento` | `bigint` | não |  |
