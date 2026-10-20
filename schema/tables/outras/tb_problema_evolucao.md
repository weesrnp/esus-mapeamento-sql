# tb_problema_evolucao

Tipo: tabela  
Grupo: outras  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_problema_evolucao` | `bigint` | sim | PK |
| 2 | `ds_observacao` | `character varying(255)` | não |  |
| 3 | `co_situacao_problema` | `bigint` | sim | FK → tb_situacao_problema |
| 4 | `co_atend_prof` | `bigint` | não | FK → tb_atend_prof |
| 5 | `co_unico_problema` | `bigint` | não |  |
| 16 | `dt_inicio_problema` | `date` | não |  |
| 17 | `dt_fim_problema` | `date` | não |  |
| 18 | `st_possui_cid` | `smallint` | não |  |
| 19 | `st_possui_ciap` | `smallint` | não |  |
| 20 | `co_sequencial_evolucao` | `bigint` | sim |  |
| 21 | `co_unico_evolucao` | `character varying(44)` | sim |  |
| 22 | `st_possui_cid11` | `integer` | não |  |

Referenciada por: `tb_problema`
