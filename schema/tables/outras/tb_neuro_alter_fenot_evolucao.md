# tb_neuro_alter_fenot_evolucao

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_neuro_alter_fenot_evol` | `bigint` | sim | PK |
| 2 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 3 | `co_alter_fenot_detalhe` | `bigint` | sim | FK → tb_neuro_alter_fenot_detalhe |
| 4 | `st_avaliado` | `character varying(32)` | sim |  |
| 5 | `co_unico_neuro_alter_fenot` | `bigint` | não |  |

Referenciada por: `tb_neuro_alter_fenot`
