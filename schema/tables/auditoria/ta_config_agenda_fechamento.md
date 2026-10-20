# ta_config_agenda_fechamento

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taconfigagendafechament` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `dt_inicio` | `timestamp without time zone` | não |  |
| 5 | `dt_fim` | `timestamp without time zone` | não |  |
| 6 | `ds_motivo` | `character varying(4000)` | não |  |
| 7 | `co_seq_config_agenda_fechament` | `bigint` | não |  |
| 8 | `co_lotacao` | `bigint` | não |  |
| 9 | `no_ident_motivo_fechamento` | `character varying(30)` | não |  |
| 10 | `st_sincronizacao` | `character varying(48)` | não |  |
| 11 | `st_registro_ativo` | `integer` | não |  |
| 12 | `uuid_fechamento` | `character varying(36)` | não |  |
