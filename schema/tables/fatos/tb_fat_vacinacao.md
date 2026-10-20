# tb_fat_vacinacao

Tipo: tabela  
Grupo: fatos  
Colunas: 35

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_vacinacao` | `bigint` | sim | PK |
| 2 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 3 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 4 | `co_dim_profissional` | `bigint` | não | FK → tb_dim_profissional |
| 5 | `co_dim_cbo` | `bigint` | não | FK → tb_dim_cbo |
| 6 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 7 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 8 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 9 | `co_dim_faixa_etaria` | `bigint` | não | FK → tb_dim_faixa_etaria |
| 10 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 11 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 12 | `nu_atendimento` | `integer` | não |  |
| 13 | `nu_prontuario` | `character varying(30)` | não |  |
| 14 | `nu_cns` | `character(15)` | não |  |
| 15 | `dt_nascimento` | `date` | não |  |
| 16 | `co_dim_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 17 | `co_dim_local_atendimento` | `bigint` | não | FK → tb_dim_local_atendimento |
| 18 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 19 | `st_viajante` | `integer` | não |  |
| 20 | `st_comunicante_hanseniase` | `integer` | não |  |
| 23 | `ds_filtro_imunobiologico` | `character varying(4000)` | não |  |
| 24 | `ds_filtro_estrategia_vacinacao` | `character varying(4000)` | não |  |
| 25 | `ds_filtro_dose_imunobiologico` | `character varying(4000)` | não |  |
| 26 | `ds_filtro_lote` | `character varying(4000)` | não |  |
| 27 | `ds_filtro_fabricante` | `character varying(4000)` | não |  |
| 28 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 29 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 30 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 31 | `dt_inicial_atendimento` | `timestamp with time zone` | não |  |
| 32 | `dt_final_atendimento` | `timestamp with time zone` | não |  |
| 33 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 34 | `ds_filtro_grupo_atendimento` | `character varying(4000)` | não |  |
| 35 | `co_dim_condicao_maternal` | `bigint` | não | FK → tb_dim_condicao_maternal |
| 36 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
| 37 | `st_nao_possui_cpf` | `integer` | não |  |
