# tl_config_agenda_detalhe

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_config_agenda_detalhe` | `bigint` | sim | PK |
| 4 | `co_dia_semana` | `bigint` | não |  |
| 5 | `co_periodo` | `bigint` | não |  |
| 6 | `co_lotacao` | `bigint` | não |  |
| 7 | `horario_inicial` | `character varying(5)` | não |  |
| 8 | `horario_final` | `character varying(5)` | não |  |
