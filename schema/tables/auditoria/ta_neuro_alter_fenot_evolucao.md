# ta_neuro_alter_fenot_evolucao

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taneuroalterfenotevoluc` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_neuro_alter_fenot_evol` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_alter_fenot_detalhe` | `bigint` | não |  |
| 7 | `st_avaliado` | `character varying(32)` | não |  |
| 8 | `co_unico_neuro_alter_fenot` | `bigint` | não |  |
