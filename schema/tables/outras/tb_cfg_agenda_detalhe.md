# tb_cfg_agenda_detalhe

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_config_agenda_detalhe` | `bigint` | sim | PK |
| 2 | `co_dia_semana` | `bigint` | sim | FK → tb_dia_semana |
| 3 | `co_periodo` | `bigint` | sim | FK → tb_periodo |
| 5 | `horario_inicial` | `character varying(5)` | sim |  |
| 6 | `horario_final` | `character varying(5)` | sim |  |
| 7 | `co_cfg_agenda` | `bigint` | sim | FK → tb_cfg_agenda |
