# tb_notificacao_status

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_notificacao_status` | `bigint` | sim | PK |
| 2 | `co_topico` | `bigint` | sim | FK → tb_topico_notificacao |
| 3 | `co_lotacao` | `bigint` | sim | FK → tb_lotacao |
| 4 | `dt_criacao` | `timestamp without time zone` | sim |  |
| 5 | `dt_ultima_atualizacao` | `timestamp without time zone` | sim |  |
| 6 | `st_notificar_externo` | `integer` | sim |  |
| 7 | `st_notificar_interno` | `integer` | sim |  |
