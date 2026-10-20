# tb_fat_atvdd_coletiva_part

Tipo: tabela  
Grupo: fatos  
Colunas: 27

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atvdd_cltv_part` | `bigint` | sim | PK |
| 2 | `co_fat_atividade_coletiva` | `bigint` | não |  |
| 3 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 4 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 5 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 6 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 7 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 8 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 9 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 10 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 11 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 12 | `co_dim_tipo_atividade` | `bigint` | não | FK → tb_dim_tipo_atividade |
| 13 | `nu_participante_cns` | `character(15)` | não |  |
| 14 | `dt_participante_nascimento` | `date` | não |  |
| 15 | `co_dim_participante_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 16 | `st_avaliacao_alterada` | `integer` | não |  |
| 17 | `st_pcnt_cessou_habito_fumar` | `integer` | não |  |
| 18 | `st_pcnt_abandonou_grupo` | `integer` | não |  |
| 19 | `nu_participante_altura` | `double precision` | não |  |
| 20 | `nu_participante_peso` | `double precision` | não |  |
| 21 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 22 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 23 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 24 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 25 | `nu_cpf_participante` | `character varying(11)` | não |  |
| 26 | `st_nao_possui_cpf` | `integer` | não |  |
| 27 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
