# ta_cfg_agenda_online_detalhe

Tipo: tabela  
Grupo: auditoria  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacfgagendaonlinedetalh` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_cfg_agenda_online_dtlh` | `bigint` | não |  |
| 5 | `co_lotacao` | `bigint` | não |  |
| 6 | `co_dia_semana` | `bigint` | não |  |
| 7 | `ds_horario` | `character varying(5)` | não |  |
| 8 | `st_sincronizacao` | `character varying(48)` | não |  |
| 9 | `uuid_horario_agenda_online` | `character varying(36)` | não |  |
| 10 | `st_registro_ativo` | `integer` | não |  |
