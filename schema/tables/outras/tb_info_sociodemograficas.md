# tb_info_sociodemograficas

Tipo: tabela  
Grupo: outras  
Colunas: 13

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_info_sociodemograficas` | `bigint` | sim | PK |
| 2 | `co_cidadao` | `bigint` | não | FK → tb_cidadao |
| 3 | `st_frequenta_escola_ou_creche` | `integer` | não |  |
| 4 | `co_situacao_mercado_trabalho` | `bigint` | não | FK → tb_situacao_mercado_trabalho |
| 5 | `st_plano_saude_privado` | `integer` | não |  |
| 6 | `st_cuidador_tradicional` | `integer` | não |  |
| 7 | `st_grupo_comunitario` | `integer` | não |  |
| 8 | `st_comunidade_tradicional` | `integer` | não |  |
| 9 | `co_povo_comunidade_tradicional` | `bigint` | não | FK → tb_povo_comunidade_tradicional |
| 10 | `st_deficiencia` | `integer` | não |  |
| 11 | `co_tipo_atend_socioeducativo` | `integer` | não | FK → tb_tipo_atend_socioeducativo |
| 12 | `co_tempo_atend_socioeducativo` | `integer` | não | FK → tb_tempo_atend_socioeducativo |
| 13 | `st_atend_socioeducativo` | `integer` | não |  |

Referenciada por: `rl_criancas_com_quem_fica`, `rl_deficiencia_info_sociodemo`
