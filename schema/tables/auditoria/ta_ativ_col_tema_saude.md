# ta_ativ_col_tema_saude

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taativcoltemasaude` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_ativ_col_tema_saude` | `bigint` | não |  |
| 5 | `co_atividade_coletiva` | `bigint` | não |  |
| 6 | `co_tema_saude` | `bigint` | não |  |
