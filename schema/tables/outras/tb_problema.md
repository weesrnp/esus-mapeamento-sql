# tb_problema

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_problema` | `bigint` | sim | PK |
| 3 | `ds_outro` | `character varying(255)` | não |  |
| 5 | `co_ciap` | `bigint` | não | FK → tb_ciap |
| 6 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 7 | `co_ultimo_problema_evolucao` | `bigint` | não | FK → tb_problema_evolucao |
| 8 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 9 | `co_unico_problema` | `bigint` | não |  |
| 10 | `nu_uuid_problema` | `character varying(44)` | sim |  |
| 11 | `co_cid11` | `bigint` | não | FK → tb_cid11 |

Referenciada por: `tb_pre_natal`
