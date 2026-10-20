# rl_proced_cid10

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cid10` | `bigint` | sim | PK |
| 2 | `co_proced` | `bigint` | sim | PK |
| 3 | `dt_competencia` | `character varying(6)` | sim |  |
| 4 | `st_ativo` | `integer` | sim |  |
| 5 | `st_cid_principal` | `integer` | não |  |
| 6 | `dt_ultima_atualizacao` | `timestamp without time zone` | sim |  |
