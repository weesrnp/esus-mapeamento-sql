# tl_compartilhamento_prontuario

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_compartilha_prontuario` | `bigint` | sim | PK |
| 4 | `co_localidade` | `bigint` | não |  |
| 5 | `co_usuario` | `bigint` | não |  |
| 6 | `st_ativo` | `integer` | não |  |
| 7 | `dt_ultima_alteracao` | `timestamp with time zone` | não |  |
