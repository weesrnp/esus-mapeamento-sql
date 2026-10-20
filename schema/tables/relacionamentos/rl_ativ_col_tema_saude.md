# rl_ativ_col_tema_saude

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ativ_col_tema_saude` | `bigint` | sim | PK |
| 2 | `co_atividade_coletiva` | `bigint` | sim | FK → tb_atividade_coletiva |
| 3 | `co_tema_saude` | `bigint` | sim | FK → tb_tema_saude |
