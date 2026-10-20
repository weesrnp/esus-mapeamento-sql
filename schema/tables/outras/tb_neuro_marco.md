# tb_neuro_marco

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_neuro_marco` | `bigint` | sim | PK |
| 2 | `co_marco_detalhe` | `bigint` | sim | FK → tb_neuro_marco_detalhe |
| 3 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 4 | `co_ultimo_marco_evolucao` | `bigint` | sim | FK → tb_neuro_marco_evolucao |
| 5 | `co_unico_marco` | `bigint` | não |  |
