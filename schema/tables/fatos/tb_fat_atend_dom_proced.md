# tb_fat_atend_dom_proced

Tipo: tabela  
Grupo: fatos  
Colunas: 20

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atend_dom_proced` | `bigint` | sim | PK |
| 2 | `co_fat_atend_domiciliar` | `bigint` | não |  |
| 3 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 4 | `nu_atendimento` | `integer` | não |  |
| 5 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 6 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 7 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 8 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 9 | `co_dim_profissional_1` | `bigint` | não | FK → tb_dim_profissional |
| 10 | `co_dim_cbo_1` | `bigint` | não | FK → tb_dim_cbo |
| 11 | `co_dim_equipe_1` | `bigint` | não | FK → tb_dim_equipe |
| 12 | `co_dim_unidade_saude_1` | `bigint` | não | FK → tb_dim_unidade_saude |
| 13 | `co_dim_profissional_2` | `bigint` | não | FK → tb_dim_profissional |
| 14 | `co_dim_cbo_2` | `bigint` | não | FK → tb_dim_cbo |
| 15 | `co_dim_equipe_2` | `bigint` | não | FK → tb_dim_equipe |
| 16 | `co_dim_unidade_saude_2` | `bigint` | não | FK → tb_dim_unidade_saude |
| 17 | `co_dim_procedimento` | `bigint` | não | FK → tb_dim_procedimento |
| 18 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 19 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 20 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
