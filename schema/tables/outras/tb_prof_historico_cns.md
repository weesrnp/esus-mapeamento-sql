# tb_prof_historico_cns

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_prof_historico_cns` | `bigint` | sim | PK |
| 2 | `co_prof` | `bigint` | não | FK → tb_prof |
| 3 | `nu_cns` | `character varying(16)` | sim |  |
