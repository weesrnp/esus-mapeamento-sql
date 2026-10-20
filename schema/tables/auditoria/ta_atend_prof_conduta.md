# ta_atend_prof_conduta

Tipo: tabela  
Grupo: auditoria  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatendprofconduta` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_atend_prof` | `bigint` | não |  |
| 5 | `tp_cds_conduta` | `bigint` | não |  |
