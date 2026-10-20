# ta_lembrete_evolucao

Tipo: tabela  
Grupo: auditoria  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_talembreteevolucao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_lembrete_evolucao` | `bigint` | não |  |
| 5 | `ds_lembrete` | `text` | não |  |
| 6 | `st_ativo` | `integer` | não |  |
| 7 | `co_lotacao` | `bigint` | não |  |
| 8 | `dt_prontuario_lembrete` | `timestamp without time zone` | não |  |
| 9 | `co_visibilidade_lembrete` | `bigint` | não |  |
| 10 | `co_lembrete` | `bigint` | não |  |
