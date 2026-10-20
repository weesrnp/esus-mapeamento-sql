# tb_ativacao_agendamento_online

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ativacao_agendamento_on` | `bigint` | sim | PK |
| 2 | `co_prof` | `bigint` | não | FK → tb_prof |
| 3 | `dt_evento` | `timestamp with time zone` | sim |  |
| 4 | `st_ativado` | `integer` | sim |  |
