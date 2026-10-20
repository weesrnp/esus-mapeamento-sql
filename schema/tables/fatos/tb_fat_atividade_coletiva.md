# tb_fat_atividade_coletiva

Tipo: tabela  
Grupo: fatos  
Colunas: 27

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atividade_coletiva` | `bigint` | sim | PK |
| 2 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 3 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 4 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 5 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 6 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 7 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 8 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 9 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 10 | `co_dim_undd_sade_acdm_sade` | `bigint` | não | FK → tb_dim_unidade_saude |
| 11 | `co_dim_procedimento` | `bigint` | não | FK → tb_dim_procedimento |
| 12 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 13 | `nu_participantes` | `integer` | não |  |
| 14 | `nu_participantes_registrados` | `integer` | não |  |
| 15 | `nu_avaliacoes_alteradas` | `integer` | não |  |
| 16 | `co_dim_tipo_atividade` | `bigint` | não | FK → tb_dim_tipo_atividade |
| 17 | `ds_filtro_tema_reuniao` | `character varying(4000)` | não |  |
| 18 | `ds_filtro_tema_para_saude` | `character varying(4000)` | não |  |
| 19 | `ds_filtro_public_alvo` | `character varying(4000)` | não |  |
| 20 | `ds_filtro_pratica_em_saude` | `character varying(4000)` | não |  |
| 21 | `st_pse_educacao` | `integer` | não |  |
| 22 | `st_pse_saude` | `integer` | não |  |
| 23 | `ds_outra_localidade` | `character varying(250)` | não |  |
| 24 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 25 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 26 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 27 | `co_dim_inep` | `bigint` | não | FK → tb_dim_inep |
