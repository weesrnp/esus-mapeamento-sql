# tb_cfg_agenda_municipal

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cfg_agenda_municipal` | `bigint` | sim | PK |
| 2 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
| 3 | `nu_duracao_atendimento_padrao` | `integer` | sim |  |
