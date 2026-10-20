# tl_evolucao_dente

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_evolucao_dente` | `bigint` | sim | PK |
| 4 | `co_dente` | `bigint` | não |  |
| 5 | `co_odontograma` | `bigint` | não |  |
| 6 | `st_coroa_cima` | `bigint` | não |  |
| 7 | `st_coroa_baixo` | `bigint` | não |  |
| 8 | `st_coroa_direita` | `bigint` | não |  |
| 9 | `st_coroa_esquerda` | `bigint` | não |  |
| 10 | `st_coroa_centro` | `bigint` | não |  |
| 11 | `st_raiz` | `bigint` | não |  |
| 12 | `st_face` | `bigint` | não |  |
