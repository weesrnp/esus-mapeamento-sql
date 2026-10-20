# ta_ativ_col_observacao_cidadao

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taativcolobservacaocidd` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_ativ_col_obs_cidadao` | `bigint` | não |  |
| 5 | `co_atividade_coletiva` | `bigint` | não |  |
| 6 | `co_cidadao` | `bigint` | não |  |
| 7 | `ds_observacao` | `text` | não |  |
