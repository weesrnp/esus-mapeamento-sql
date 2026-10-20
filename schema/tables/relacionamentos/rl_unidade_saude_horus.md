# rl_unidade_saude_horus

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |
| 2 | `co_unidade_saude_horus` | `bigint` | sim | FK → tb_unidade_saude |
| 3 | `co_seq_unidade_saude_horus` | `bigint` | sim | PK |
