# tl_config_atencao_domiciliar

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_config_atencao_domicilr` | `bigint` | sim | PK |
| 2 | `co_localidade` | `bigint` | não |  |
| 3 | `co_revisao` | `bigint` | sim | PK |
| 4 | `co_tipo_revisao` | `integer` | não |  |
| 5 | `qt_tempo_duracao_consulta` | `integer` | não |  |
