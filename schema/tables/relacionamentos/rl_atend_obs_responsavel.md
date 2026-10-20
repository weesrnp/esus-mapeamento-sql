# rl_atend_obs_responsavel

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atend_obs_responsavel` | `bigint` | sim | PK |
| 2 | `co_atend_obs` | `bigint` | sim | FK → tb_atend_obs |
| 3 | `co_responsavel` | `bigint` | sim | FK → tb_lotacao |
| 4 | `st_atendeu_responsavel` | `integer` | sim |  |
