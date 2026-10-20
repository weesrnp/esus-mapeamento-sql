# rl_beneficio_cidadao_aldeado

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_beneficio_cidadao` | `bigint` | sim | PK |
| 2 | `co_beneficio` | `bigint` | sim | FK → tb_beneficio |
| 3 | `co_cidadao_aldeado` | `bigint` | sim | FK → tb_cidadao_aldeado |
