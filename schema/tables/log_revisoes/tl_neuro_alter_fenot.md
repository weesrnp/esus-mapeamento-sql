# tl_neuro_alter_fenot

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_neuro_alter_fenot` | `bigint` | sim | PK |
| 4 | `co_alter_fenot_detalhe` | `bigint` | não |  |
| 5 | `co_prontuario` | `bigint` | não |  |
| 6 | `co_ultimo_alter_fenot_evolucao` | `bigint` | não |  |
| 7 | `co_unico_alter_fenot` | `bigint` | não |  |
