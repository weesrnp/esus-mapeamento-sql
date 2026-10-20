# ta_sistemaexterno_localidade

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tasistemaexternolocaldd` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_sistemaexterno_local` | `bigint` | não |  |
| 5 | `co_sistema_externo` | `bigint` | não |  |
| 6 | `co_localidade` | `bigint` | não |  |
