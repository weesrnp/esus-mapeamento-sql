# tl_justificativa_prontuario

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_justificativa_prontuar` | `bigint` | sim | PK |
| 4 | `dt_acesso_prontuario` | `timestamp with time zone` | não |  |
| 5 | `ds_justificativa` | `character varying(1000)` | não |  |
| 6 | `co_lotacao` | `bigint` | não |  |
| 7 | `co_prontuario` | `bigint` | não |  |
| 8 | `co_usuario` | `bigint` | não |  |
