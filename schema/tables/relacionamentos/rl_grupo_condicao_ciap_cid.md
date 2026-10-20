# rl_grupo_condicao_ciap_cid

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_grupo_ciap_cid` | `bigint` | sim | PK |
| 2 | `co_grupo_condicao` | `bigint` | sim | FK → tb_grupo_condicao_saude |
| 3 | `co_ciap` | `bigint` | não | FK → tb_ciap |
| 4 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
