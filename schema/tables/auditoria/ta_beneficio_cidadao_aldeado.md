# ta_beneficio_cidadao_aldeado

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tabeneficiocidadaoalded` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_beneficio_cidadao` | `bigint` | não |  |
| 5 | `co_beneficio` | `bigint` | não |  |
| 6 | `co_cidadao_aldeado` | `bigint` | não |  |
