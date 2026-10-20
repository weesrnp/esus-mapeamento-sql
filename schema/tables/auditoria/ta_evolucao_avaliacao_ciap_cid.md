# ta_evolucao_avaliacao_ciap_cid

Tipo: tabela  
Grupo: auditoria  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taevolucaoavaliacaocpcd` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_evolucao_aval_ciap_cid` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_ciap` | `bigint` | não |  |
| 7 | `co_cid10` | `bigint` | não |  |
| 8 | `ds_nota` | `character varying(400)` | não |  |
| 9 | `co_unico_problema` | `bigint` | não |  |
| 10 | `co_cid11` | `bigint` | não |  |
