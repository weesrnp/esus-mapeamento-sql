# ta_marcador_consumo_alimentar

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tamarcadorconsumoalmntr` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_marcador_consumo_alim` | `bigint` | não |  |
| 5 | `co_qst_questionario` | `bigint` | não |  |
