# tl_neuro_marco_evolucao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_neuro_marco_evolucao` | `bigint` | sim | PK |
| 4 | `co_atend_prof` | `bigint` | não |  |
| 5 | `co_marco_detalhe` | `bigint` | não |  |
| 6 | `st_avaliado` | `character varying(32)` | não |  |
| 7 | `nu_anos_idade_registro` | `integer` | não |  |
| 8 | `nu_meses_idade_registro` | `integer` | não |  |
| 9 | `co_unico_neuro_marco` | `bigint` | não |  |
