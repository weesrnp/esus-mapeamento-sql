# tb_fat_procedimento

Tipo: tabela  
Grupo: fatos  
Colunas: 19

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_procedimento` | `bigint` | sim | PK |
| 2 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 3 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 4 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 5 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 6 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 7 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 8 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 9 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 10 | `nr_proc_consdd_pressao_arteria` | `integer` | não |  |
| 11 | `nr_proc_consdd_temperatura` | `integer` | não |  |
| 12 | `nr_proc_consdd_curativo_simple` | `integer` | não |  |
| 13 | `nr_proc_consdd_mate_exame_labo` | `integer` | não |  |
| 14 | `nr_proc_consdd_glicemia_capila` | `integer` | não |  |
| 15 | `nr_proc_consdd_medicao_altura` | `integer` | não |  |
| 16 | `nr_proc_consdd_medicao_peso` | `integer` | não |  |
| 17 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 18 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 19 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
