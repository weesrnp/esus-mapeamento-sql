# tb_risco

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_risco` | `bigint` | sim | PK |
| 2 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 3 | `co_tipo_risco` | `bigint` | sim | FK → tb_tipo_risco |
| 4 | `co_ultima_evolucao` | `bigint` | não | FK → tb_risco_evolucao |
| 5 | `co_unico_risco` | `bigint` | não |  |
