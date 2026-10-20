# tl_usuario

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_usuario` | `bigint` | sim | PK |
| 4 | `st_bloqueado` | `integer` | não |  |
| 5 | `ds_senha` | `character varying(255)` | não |  |
| 6 | `st_trocar_senha` | `integer` | não |  |
| 7 | `co_ator` | `bigint` | não |  |
| 8 | `dt_ultima_atualizacao_senha` | `date` | não |  |
| 9 | `st_termo_uso` | `integer` | não |  |
| 10 | `st_forcar_troca_senha` | `integer` | não |  |
| 11 | `nr_tentativas_acesso` | `integer` | não |  |
