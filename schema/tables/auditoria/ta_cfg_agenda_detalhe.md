# ta_cfg_agenda_detalhe

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacfgagendadetalhe` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_config_agenda_detalhe` | `bigint` | não |  |
| 5 | `co_dia_semana` | `bigint` | não |  |
| 6 | `co_periodo` | `bigint` | não |  |
| 7 | `horario_inicial` | `character varying(5)` | não |  |
| 8 | `horario_final` | `character varying(5)` | não |  |
| 9 | `co_cfg_agenda` | `bigint` | não |  |
