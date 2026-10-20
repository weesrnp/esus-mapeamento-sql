# ta_ivcf_aplicacao

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taivcfaplicacao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_ivcfaplicacao` | `bigint` | não |  |
| 5 | `co_ivcf` | `bigint` | não |  |
| 6 | `co_pergunta` | `bigint` | não |  |
| 7 | `st_resposta` | `integer` | não |  |
