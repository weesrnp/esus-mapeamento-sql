# tl_lembrete_evolucao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_lembrete_evolucao` | `bigint` | sim | PK |
| 2 | `ds_lembrete` | `text` | não |  |
| 3 | `st_ativo` | `integer` | não |  |
| 4 | `dt_prontuario_lembrete` | `timestamp without time zone` | não |  |
| 5 | `co_visibilidade_lembrete` | `bigint` | não |  |
| 6 | `co_lembrete` | `bigint` | não |  |
| 7 | `co_lotacao` | `bigint` | não |  |
| 8 | `co_revisao` | `bigint` | sim | PK |
| 9 | `co_tipo_revisao` | `integer` | não |  |
