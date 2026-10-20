# tl_config_agenda_fechamento

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `dt_inicio` | `timestamp without time zone` | não |  |
| 2 | `dt_fim` | `timestamp without time zone` | não |  |
| 3 | `ds_motivo` | `character varying(4000)` | não |  |
| 4 | `co_seq_config_agenda_fechament` | `bigint` | sim | PK |
| 5 | `co_tipo_revisao` | `integer` | não |  |
| 6 | `co_revisao` | `bigint` | sim | PK |
| 7 | `co_lotacao` | `bigint` | não |  |
| 8 | `no_ident_motivo_fechamento` | `character varying(30)` | não |  |
| 9 | `st_sincronizacao` | `character varying(48)` | não |  |
| 10 | `st_registro_ativo` | `integer` | não |  |
| 11 | `uuid_fechamento` | `character varying(36)` | não |  |
