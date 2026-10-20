# tb_neuro_alter_fenot

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_neuro_alter_fenot` | `bigint` | sim | PK |
| 2 | `co_alter_fenot_detalhe` | `bigint` | sim | FK → tb_neuro_alter_fenot_detalhe |
| 3 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 4 | `co_ultimo_alter_fenot_evolucao` | `bigint` | sim | FK → tb_neuro_alter_fenot_evolucao |
| 5 | `co_unico_alter_fenot` | `bigint` | não |  |
