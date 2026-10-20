# ta_vinculacao_servico

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tavinculacaoservico` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_vinculacao_servico` | `bigint` | não |  |
| 5 | `co_estabelecimento_referencia` | `bigint` | não |  |
| 6 | `co_estabelecimento_vinculado` | `bigint` | não |  |
| 7 | `co_localidade` | `bigint` | não |  |
