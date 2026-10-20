# tl_prontuario_grupo_historico

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_prontuario_grpo_hstrco` | `bigint` | sim | PK |
| 4 | `co_prontuario_grupo` | `bigint` | não |  |
| 5 | `co_prontuario` | `bigint` | não |  |
| 6 | `dt_unificacao` | `timestamp with time zone` | não |  |
