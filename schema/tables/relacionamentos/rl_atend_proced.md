# rl_atend_proced

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atend_proced` | `bigint` | sim | PK |
| 2 | `st_obrigatorio` | `integer` | não |  |
| 3 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 4 | `co_proced` | `bigint` | sim | FK → tb_proced |
| 5 | `co_cid10_principal` | `bigint` | não | FK → tb_cid10 |
| 6 | `st_automatico` | `integer` | não |  |
