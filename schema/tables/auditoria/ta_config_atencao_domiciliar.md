# ta_config_atencao_domiciliar

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taconfigatencaodomicilr` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_config_atencao_domicilr` | `bigint` | não |  |
| 5 | `co_localidade` | `bigint` | não |  |
| 6 | `qt_tempo_duracao_consulta` | `integer` | não |  |
