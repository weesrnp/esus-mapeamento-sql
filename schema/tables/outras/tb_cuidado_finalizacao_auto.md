# tb_cuidado_finalizacao_auto

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ccfimauto` | `bigint` | sim | PK |
| 2 | `co_cuidado_compartilhado` | `bigint` | sim | FK → tb_cuidado_compartilhado |
| 3 | `dt_finalizado` | `timestamp without time zone` | sim |  |
| 4 | `dt_reaberto` | `timestamp without time zone` | não |  |
| 5 | `co_evolucao_anterior` | `integer` | sim |  |
