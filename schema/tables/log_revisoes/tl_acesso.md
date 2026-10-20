# tl_acesso

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_perfil` | `bigint` | não |  |
| 4 | `nu_obrigacao` | `integer` | não |  |
| 5 | `co_recurso` | `bigint` | não |  |
| 6 | `nu_acao` | `integer` | não |  |
| 7 | `co_seq_acesso` | `bigint` | sim | PK |
