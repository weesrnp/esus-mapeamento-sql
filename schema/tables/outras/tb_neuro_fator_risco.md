# tb_neuro_fator_risco

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_neuro_fator_risco` | `bigint` | sim | PK |
| 2 | `co_fator_risco_detalhe` | `bigint` | sim | FK → tb_neuro_fator_risco_detalhe |
| 3 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 4 | `co_ultimo_fator_risco_evolucao` | `bigint` | sim | FK → tb_neuro_fator_risco_evolucao |
| 5 | `co_unico_fator_risco` | `bigint` | não |  |
