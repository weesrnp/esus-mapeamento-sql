# tb_fat_ivcf

Tipo: tabela  
Grupo: fatos  
Colunas: 28

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_ivcf` | `bigint` | sim | PK |
| 2 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 3 | `co_dim_municipio` | `bigint` | sim | FK → tb_dim_municipio |
| 4 | `co_dim_unidade_saude` | `bigint` | sim | FK → tb_dim_unidade_saude |
| 5 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 6 | `co_dim_cbo` | `bigint` | sim | FK → tb_dim_cbo |
| 7 | `co_dim_profissional` | `bigint` | sim | FK → tb_dim_profissional |
| 8 | `co_dim_tempo` | `bigint` | sim | FK → tb_dim_tempo |
| 9 | `nu_uuid_ficha` | `character varying(92)` | sim |  |
| 10 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 11 | `nu_cns_cidadao` | `character varying(15)` | não |  |
| 12 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 13 | `nu_resultado` | `integer` | sim |  |
| 14 | `co_grau_vulnerabilidade` | `bigint` | não | FK → tb_dim_grau_vulnerabilidade |
| 15 | `st_sg_idade` | `integer` | sim |  |
| 16 | `st_sg_percepcao_saude` | `integer` | sim |  |
| 17 | `st_sg_avd_instrumental` | `integer` | sim |  |
| 18 | `st_sg_avd_basica` | `integer` | sim |  |
| 19 | `st_sg_cognicao` | `integer` | sim |  |
| 20 | `st_sg_humor` | `integer` | sim |  |
| 21 | `st_sg_alcance_preensao_pinca` | `integer` | sim |  |
| 22 | `st_sg_cap_aerobica_muscular` | `integer` | sim |  |
| 23 | `st_sg_marcha` | `integer` | sim |  |
| 24 | `st_sg_continencia` | `integer` | sim |  |
| 25 | `st_sg_visao` | `integer` | sim |  |
| 26 | `st_sg_audicao` | `integer` | sim |  |
| 27 | `st_sg_comorbidade` | `integer` | sim |  |
| 28 | `dt_resultado` | `timestamp without time zone` | sim |  |
