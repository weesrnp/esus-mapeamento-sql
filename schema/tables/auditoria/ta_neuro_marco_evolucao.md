# ta_neuro_marco_evolucao

Tipo: tabela  
Grupo: auditoria  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taneuromarcoevolucao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_neuro_marco_evolucao` | `bigint` | não |  |
| 5 | `co_atend_prof` | `bigint` | não |  |
| 6 | `co_marco_detalhe` | `bigint` | não |  |
| 7 | `st_avaliado` | `character varying(32)` | não |  |
| 8 | `nu_anos_idade_registro` | `integer` | não |  |
| 9 | `nu_meses_idade_registro` | `integer` | não |  |
| 10 | `co_unico_neuro_marco` | `bigint` | não |  |
