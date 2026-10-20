# tb_config_atencao_domiciliar

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_config_atencao_domicilr` | `bigint` | sim | PK |
| 2 | `co_localidade` | `bigint` | não | FK → tb_localidade |
| 3 | `qt_tempo_duracao_consulta` | `integer` | não |  |

Referenciada por: `tb_config_atend_domiciliar`
