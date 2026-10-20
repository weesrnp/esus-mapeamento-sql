# rl_evolucao_subjetivo_ciap

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_evolucao_subjetivo_ciap` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `co_ciap` | `bigint` | sim | FK → tb_ciap |
| 4 | `ds_nota` | `character varying(400)` | não |  |
