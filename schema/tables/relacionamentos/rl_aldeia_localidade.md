# rl_aldeia_localidade

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_aldeia_localidade` | `bigint` | sim | PK |
| 2 | `co_aldeia` | `bigint` | sim | FK → tb_aldeia |
| 3 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
