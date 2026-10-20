# rl_situacaoraiz_evolucaodente

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_straiz_evodente` | `bigint` | sim | PK |
| 2 | `co_evolucao_dente` | `bigint` | sim | FK → tb_evolucao_dente |
| 3 | `co_st_raiz` | `bigint` | sim | FK → tb_situacao_raiz |
