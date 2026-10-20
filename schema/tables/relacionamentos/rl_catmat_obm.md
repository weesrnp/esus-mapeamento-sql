# rl_catmat_obm

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_catmat_obm` | `bigint` | sim | PK |
| 2 | `co_medicamento_catmat` | `bigint` | sim | FK → tb_medicamento_catmat |
| 3 | `co_obm` | `character varying(50)` | sim |  |
