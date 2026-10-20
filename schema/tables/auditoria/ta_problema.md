# ta_problema

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taproblema` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_problema` | `bigint` | não |  |
| 5 | `ds_outro` | `character varying(255)` | não |  |
| 6 | `co_ciap` | `bigint` | não |  |
| 7 | `co_cid10` | `bigint` | não |  |
| 8 | `co_ultimo_problema_evolucao` | `bigint` | não |  |
| 9 | `co_prontuario` | `bigint` | não |  |
| 10 | `co_unico_problema` | `bigint` | não |  |
| 11 | `nu_uuid_problema` | `character varying(44)` | não |  |
| 12 | `co_cid11` | `bigint` | não |  |
