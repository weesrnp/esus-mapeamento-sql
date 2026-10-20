# ta_evolucao_dente

Tipo: tabela  
Grupo: auditoria  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taevolucaodente` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_evolucao_dente` | `bigint` | não |  |
| 5 | `co_dente` | `bigint` | não |  |
| 6 | `co_odontograma` | `bigint` | não |  |
| 7 | `st_coroa_cima` | `bigint` | não |  |
| 8 | `st_coroa_baixo` | `bigint` | não |  |
| 9 | `st_coroa_direita` | `bigint` | não |  |
| 10 | `st_coroa_esquerda` | `bigint` | não |  |
| 11 | `st_coroa_centro` | `bigint` | não |  |
