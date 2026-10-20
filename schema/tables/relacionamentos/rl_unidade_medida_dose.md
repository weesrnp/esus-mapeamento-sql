# rl_unidade_medida_dose

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_unidade_medida_dose` | `bigint` | sim | PK |
| 2 | `co_unidade_medida_fornec` | `bigint` | sim | FK → tb_unidade_medida |
| 3 | `co_unidade_medida_dose` | `bigint` | sim | FK → tb_unidade_medida |
