# rl_ativ_col_lot_env

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ativ_col_lot_env` | `bigint` | sim | PK |
| 2 | `co_atividade_coletiva` | `bigint` | sim | FK → tb_atividade_coletiva |
| 3 | `co_lotacao_envolvida` | `bigint` | sim | FK → tb_lotacao |
