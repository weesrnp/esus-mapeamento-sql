# tl_config_atend_domiciliar

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_config_atend_domiciliar` | `bigint` | sim | PK |
| 2 | `co_equipe_pai` | `bigint` | não |  |
| 3 | `co_equipe_filho` | `bigint` | não |  |
| 4 | `tp_config_atend_domiciliar` | `bigint` | não |  |
| 5 | `co_revisao` | `bigint` | sim | PK |
| 6 | `co_tipo_revisao` | `integer` | não |  |
| 7 | `co_config_atencao_domiciliar` | `bigint` | não |  |
