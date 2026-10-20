# rl_inscrito_topico_notificacao

Tipo: tabela  
Grupo: relacionamentos  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_inscrito_topico_noti` | `bigint` | sim | PK |
| 2 | `co_topico` | `bigint` | sim | FK → tb_topico_notificacao |
| 3 | `co_lotacao` | `bigint` | sim | FK → tb_lotacao |
| 4 | `dt_inscricao` | `timestamp without time zone` | sim |  |
| 5 | `dt_ultima_interacao` | `timestamp without time zone` | sim |  |
