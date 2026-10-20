# ta_situacao_rua_origem_alimnt

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tasituacaoruaorigemlmnt` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_situacao_rua` | `bigint` | não |  |
| 5 | `co_tipo_origem_alimentacao` | `bigint` | não |  |
