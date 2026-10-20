# ta_resposta_mca

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tarespostamca` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_resposta_mca` | `bigint` | não |  |
| 5 | `co_marcador_consumo_alimentar` | `bigint` | não |  |
| 6 | `co_pergunta_mca` | `bigint` | não |  |
