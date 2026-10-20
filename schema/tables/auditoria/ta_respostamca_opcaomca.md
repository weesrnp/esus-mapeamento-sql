# ta_respostamca_opcaomca

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tarespostamcaopcaomca` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_respostamca_opcaomca` | `bigint` | não |  |
| 5 | `co_resposta_mca` | `bigint` | não |  |
| 6 | `co_opcao_mca` | `bigint` | não |  |
