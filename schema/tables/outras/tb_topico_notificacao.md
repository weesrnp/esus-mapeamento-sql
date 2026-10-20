# tb_topico_notificacao

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_topico_notificacao` | `bigint` | sim | PK |
| 2 | `tp_topico` | `bigint` | sim | FK → tb_tipo_topico_notificacao |
| 3 | `co_topico_externo` | `bigint` | sim |  |
| 4 | `dt_criacao` | `timestamp without time zone` | sim |  |
| 5 | `dt_ultima_atualizacao` | `timestamp without time zone` | sim |  |

Referenciada por: `rl_inscrito_topico_notificacao`, `tb_notificacao_status`
