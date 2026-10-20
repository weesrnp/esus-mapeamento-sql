# tb_config_agenda_fechamento

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `dt_inicio` | `timestamp without time zone` | sim |  |
| 2 | `dt_fim` | `timestamp without time zone` | sim |  |
| 3 | `ds_motivo` | `character varying(4000)` | não |  |
| 4 | `co_seq_config_agenda_fechament` | `bigint` | sim | PK |
| 5 | `co_lotacao` | `bigint` | não | FK → tb_lotacao |
| 6 | `no_ident_motivo_fechamento` | `character varying(30)` | não |  |
| 7 | `st_sincronizacao` | `character varying(48)` | não |  |
| 8 | `st_registro_ativo` | `integer` | não |  |
| 9 | `uuid_fechamento` | `character varying(36)` | não |  |
