# tb_fat_proced_atend_proced

Tipo: tabela  
Grupo: fatos  
Colunas: 23

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_proced_atend_proced` | `bigint` | sim | PK |
| 2 | `co_fat_procedimento` | `bigint` | não |  |
| 3 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 4 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 5 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 6 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 7 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 8 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 9 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 10 | `co_dim_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 11 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 12 | `co_dim_local_atendimento` | `bigint` | não | FK → tb_dim_local_atendimento |
| 13 | `st_escuta_inicial` | `integer` | não |  |
| 14 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 15 | `nu_atendimento` | `integer` | não |  |
| 16 | `nu_cns` | `character(15)` | não |  |
| 17 | `dt_nascimento` | `date` | não |  |
| 18 | `co_dim_procedimento` | `bigint` | não | FK → tb_dim_procedimento |
| 19 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 20 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 21 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 22 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 23 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
