# ta_situacao_rua_hgiene_pssoal

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tasituacaoruahgienepssl` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_situacao_rua` | `bigint` | não |  |
| 5 | `co_tipo_acesso_higiene` | `bigint` | não |  |
