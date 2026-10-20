# ta_substancia_espec_alergia

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tasubstanciaespecalergi` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_substanc_espec_alergia` | `bigint` | não |  |
| 5 | `co_categoria` | `bigint` | não |  |
| 6 | `co_substancia` | `bigint` | não |  |
| 7 | `co_imunobiologico` | `bigint` | não |  |
| 8 | `co_medicamento_catmat` | `bigint` | não |  |
