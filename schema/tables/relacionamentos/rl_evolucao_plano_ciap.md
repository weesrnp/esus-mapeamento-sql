# rl_evolucao_plano_ciap

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_evolucao_plano_ciap` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `co_ciap` | `bigint` | não | FK → tb_ciap |
| 4 | `ds_nota` | `character varying(400)` | não |  |
| 5 | `co_proced` | `bigint` | não | FK → tb_proced |
| 6 | `st_automatico` | `integer` | não |  |
