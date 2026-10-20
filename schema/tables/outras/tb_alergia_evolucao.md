# tb_alergia_evolucao

Tipo: tabela  
Grupo: outras  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_alergia_evolucao` | `bigint` | sim | PK |
| 2 | `co_unico_alergia` | `bigint` | não |  |
| 3 | `no_manifestacoes` | `character varying(800)` | não |  |
| 5 | `st_alergia_avaliada` | `integer` | não |  |
| 6 | `co_criticidade_alergia` | `bigint` | sim | FK → tb_criticidade_alergia |
| 8 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 9 | `co_tipo_reacao_alergia` | `bigint` | não | FK → tb_tipo_reacao_alergia |
| 10 | `co_grau_certeza_alergia` | `bigint` | sim | FK → tb_grau_certeza_alergia |
| 11 | `dt_inicio` | `date` | não |  |
| 12 | `ds_observacao` | `character varying(800)` | não |  |
| 13 | `st_substancia_cbara` | `smallint` | não |  |

Referenciada por: `rl_manifest_alergiaevolucao`, `tb_alergia`
