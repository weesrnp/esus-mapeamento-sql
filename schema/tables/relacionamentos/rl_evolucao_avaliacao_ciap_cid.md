# rl_evolucao_avaliacao_ciap_cid

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_evolucao_aval_ciap_cid` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `co_ciap` | `bigint` | não | FK → tb_ciap |
| 4 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 5 | `ds_nota` | `character varying(400)` | não |  |
| 6 | `co_unico_problema` | `bigint` | não |  |
| 7 | `co_cid11` | `bigint` | não | FK → tb_cid11 |
