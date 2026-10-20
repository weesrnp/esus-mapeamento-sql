# tl_tipo_encam_odonto_procd_aut

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_proced_automatico` | `bigint` | sim | PK |
| 4 | `tp_encam_odonto` | `bigint` | sim | PK |
