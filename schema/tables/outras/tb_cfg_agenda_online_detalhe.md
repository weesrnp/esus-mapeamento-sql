# tb_cfg_agenda_online_detalhe

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cfg_agenda_online_dtlh` | `bigint` | sim | PK |
| 2 | `co_lotacao` | `bigint` | sim | FK → tb_lotacao |
| 3 | `co_dia_semana` | `bigint` | sim | FK → tb_dia_semana |
| 4 | `ds_horario` | `character varying(5)` | sim |  |
| 5 | `st_sincronizacao` | `character varying(48)` | não |  |
| 6 | `uuid_horario_agenda_online` | `character varying(36)` | não |  |
| 7 | `st_registro_ativo` | `integer` | não |  |
