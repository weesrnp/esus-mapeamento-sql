# tb_evolucao_dente

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_evolucao_dente` | `bigint` | sim | PK |
| 2 | `co_dente` | `bigint` | não | FK → tb_dente |
| 3 | `co_odontograma` | `bigint` | não | FK → tb_odontograma |
| 4 | `st_coroa_cima` | `bigint` | não | FK → tb_situacao_coroa |
| 5 | `st_coroa_baixo` | `bigint` | não | FK → tb_situacao_coroa |
| 6 | `st_coroa_direita` | `bigint` | não | FK → tb_situacao_coroa |
| 7 | `st_coroa_esquerda` | `bigint` | não | FK → tb_situacao_coroa |
| 8 | `st_coroa_centro` | `bigint` | não | FK → tb_situacao_coroa |

Referenciada por: `rl_situacaoface_evolucaodente`, `rl_situacaoraiz_evolucaodente`
