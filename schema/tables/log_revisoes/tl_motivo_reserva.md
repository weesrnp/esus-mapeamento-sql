# tl_motivo_reserva

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_motivo_reserva` | `bigint` | sim | PK |
| 4 | `no_motivo_reserva` | `character varying(50)` | não |  |
