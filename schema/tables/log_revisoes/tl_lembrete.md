# tl_lembrete

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_lembrete` | `bigint` | sim | PK |
| 4 | `dt_prontuario_lembrete` | `timestamp without time zone` | não |  |
| 5 | `ds_lembrete` | `text` | não |  |
| 6 | `st_desativado` | `integer` | não |  |
| 7 | `co_atend_prof` | `bigint` | não |  |
| 8 | `co_prontuario` | `bigint` | não |  |
| 9 | `co_ultimo_lembrete_evolucao` | `bigint` | não |  |
