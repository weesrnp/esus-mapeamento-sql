# ta_info_sociodemograficas

Tipo: tabela  
Grupo: auditoria  
Colunas: 16

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tainfosociodemograficas` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_info_sociodemograficas` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `st_frequenta_escola_ou_creche` | `integer` | não |  |
| 7 | `co_situacao_mercado_trabalho` | `bigint` | não |  |
| 8 | `st_plano_saude_privado` | `integer` | não |  |
| 9 | `st_cuidador_tradicional` | `integer` | não |  |
| 10 | `st_grupo_comunitario` | `integer` | não |  |
| 11 | `st_comunidade_tradicional` | `integer` | não |  |
| 12 | `co_povo_comunidade_tradicional` | `bigint` | não |  |
| 13 | `st_deficiencia` | `integer` | não |  |
| 14 | `co_tipo_atend_socioeducativo` | `integer` | não |  |
| 15 | `co_tempo_atend_socioeducativo` | `integer` | não |  |
| 16 | `st_atend_socioeducativo` | `integer` | não |  |
