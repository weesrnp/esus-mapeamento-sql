# ta_config_atend_domiciliar

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taconfigatenddomiciliar` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_config_atend_domiciliar` | `bigint` | não |  |
| 5 | `co_equipe_pai` | `bigint` | não |  |
| 6 | `co_equipe_filho` | `bigint` | não |  |
| 7 | `co_config_atencao_domiciliar` | `bigint` | não |  |
| 8 | `tp_config_atend_domiciliar` | `integer` | não |  |
