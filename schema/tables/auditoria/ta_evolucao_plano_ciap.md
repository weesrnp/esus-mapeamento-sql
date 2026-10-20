# ta_evolucao_plano_ciap

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taevolucaoplanociap` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_evolucao_plano_ciap` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_ciap` | `bigint` | não |  |
| 7 | `ds_nota` | `character varying(400)` | não |  |
| 8 | `co_proced` | `bigint` | não |  |
| 9 | `st_automatico` | `integer` | não |  |
