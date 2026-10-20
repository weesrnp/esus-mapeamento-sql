# tb_criador_reserva_unif_base

Tipo: tabela  
Grupo: outras  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_criadr_reserv_unif_base` | `bigint` | sim | PK |
| 2 | `co_agendado` | `bigint` | sim | FK → tb_agendado |
| 3 | `co_unificacao_base` | `bigint` | sim | FK → tb_unificacao_base |
| 4 | `co_cbo` | `bigint` | sim |  |
| 5 | `co_unidade_saude` | `bigint` | sim |  |
| 6 | `nu_cpf` | `character varying(11)` | sim |  |
| 7 | `nu_ine` | `character varying(20)` | não |  |
| 8 | `st_importado` | `integer` | sim |  |
