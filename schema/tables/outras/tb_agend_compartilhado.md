# tb_agend_compartilhado

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_agend_compartilhado` | `bigint` | sim | PK |
| 2 | `co_agend_principal` | `bigint` | sim | FK → tb_agendado |
| 3 | `co_agend_participante` | `bigint` | sim | FK → tb_agendado |
| 7 | `co_videochamada` | `bigint` | não | FK → tb_videochamada |
