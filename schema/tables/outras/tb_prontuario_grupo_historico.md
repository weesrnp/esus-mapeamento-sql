# tb_prontuario_grupo_historico

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_prontuario_grpo_hstrco` | `bigint` | sim | PK |
| 2 | `co_prontuario_grupo` | `bigint` | não | FK → tb_prontuario |
| 3 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 4 | `dt_unificacao` | `timestamp with time zone` | não |  |
