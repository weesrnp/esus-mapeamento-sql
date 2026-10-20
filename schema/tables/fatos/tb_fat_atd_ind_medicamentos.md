# tb_fat_atd_ind_medicamentos

Tipo: tabela  
Grupo: fatos  
Colunas: 37

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atd_ind_medicam` | `bigint` | sim | PK |
| 2 | `co_fat_atd_ind` | `bigint` | não |  |
| 3 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 4 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 5 | `co_dim_profissional_1` | `bigint` | não | FK → tb_dim_profissional |
| 6 | `co_dim_profissional_2` | `bigint` | não | FK → tb_dim_profissional |
| 7 | `co_dim_cbo_1` | `bigint` | não | FK → tb_dim_cbo |
| 8 | `co_dim_cbo_2` | `bigint` | não | FK → tb_dim_cbo |
| 9 | `co_dim_unidade_saude_1` | `bigint` | não | FK → tb_dim_unidade_saude |
| 10 | `co_dim_unidade_saude_2` | `bigint` | não | FK → tb_dim_unidade_saude |
| 11 | `co_dim_equipe_1` | `bigint` | não | FK → tb_dim_equipe |
| 12 | `co_dim_equipe_2` | `bigint` | não | FK → tb_dim_equipe |
| 13 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 14 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 15 | `nu_atendimento` | `integer` | não |  |
| 16 | `nu_cns_cidadao` | `character varying(15)` | não |  |
| 17 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 18 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 19 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 20 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 21 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 22 | `co_dim_catmat` | `bigint` | não | FK → tb_dim_catmat |
| 23 | `co_dim_dose_frequencia_medida` | `bigint` | não | FK → tb_dim_dose_frequencia_medida |
| 24 | `co_dim_duracao_tratamento_med` | `bigint` | não | FK → tb_dim_duracao_tratamento_med |
| 25 | `co_dim_dose_frequencia` | `bigint` | não | FK → tb_dim_dose_frequencia |
| 26 | `co_dim_via_administracao` | `bigint` | não | FK → tb_dim_via_administracao |
| 27 | `ds_dose` | `character varying(255)` | não |  |
| 28 | `st_dose_unica` | `integer` | não |  |
| 29 | `st_uso_continuo` | `integer` | não |  |
| 30 | `ds_dose_frequencia` | `character varying(255)` | não |  |
| 31 | `qt_dose_frequencia` | `integer` | não |  |
| 32 | `qt_duracao_tratamento` | `integer` | não |  |
| 33 | `qt_receitada` | `integer` | não |  |
| 34 | `dt_inicio_tratamento` | `date` | não |  |
| 35 | `qt_dose_manha` | `character varying(25)` | não |  |
| 36 | `qt_dose_tarde` | `character varying(25)` | não |  |
| 37 | `qt_dose_noite` | `character varying(25)` | não |  |
