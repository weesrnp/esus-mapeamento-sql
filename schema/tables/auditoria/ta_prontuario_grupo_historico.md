# ta_prontuario_grupo_historico

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taprontuariogrupohistrc` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_prontuario_grpo_hstrco` | `bigint` | não |  |
| 5 | `co_prontuario_grupo` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `dt_unificacao` | `timestamp with time zone` | não |  |
