# tb_config_atend_domiciliar

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_config_atend_domiciliar` | `bigint` | sim | PK |
| 2 | `co_equipe_pai` | `bigint` | sim | FK → tb_equipe |
| 3 | `co_equipe_filho` | `bigint` | sim | FK → tb_equipe |
| 5 | `co_config_atencao_domiciliar` | `bigint` | não | FK → tb_config_atencao_domiciliar |
| 6 | `tp_config_atend_domiciliar` | `integer` | não |  |
