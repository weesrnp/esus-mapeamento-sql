# tb_fat_proced_atend

Tipo: tabela  
Grupo: fatos  
Colunas: 44

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_proced_atend` | `bigint` | sim | PK |
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
| 13 | `co_dim_faixa_etaria` | `bigint` | não | FK → tb_dim_faixa_etaria |
| 14 | `st_escuta_inicial` | `integer` | não |  |
| 15 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 16 | `nu_atendimento` | `integer` | não |  |
| 17 | `nu_cns` | `character(15)` | não |  |
| 18 | `dt_nascimento` | `date` | não |  |
| 19 | `ds_filtro_procedimento` | `character varying(4000)` | não |  |
| 20 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 21 | `nu_prontuario` | `character varying(65)` | não |  |
| 22 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 23 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 24 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 25 | `dt_inicial_atendimento` | `timestamp with time zone` | não |  |
| 26 | `dt_final_atendimento` | `timestamp with time zone` | não |  |
| 27 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 28 | `nu_peso` | `double precision` | não |  |
| 29 | `nu_altura` | `double precision` | não |  |
| 30 | `nu_circ_abdominal` | `numeric(6,1)` | não |  |
| 31 | `nu_perim_panturrilha` | `numeric(3,1)` | não |  |
| 32 | `nu_pressao_sistolica` | `numeric(3,0)` | não |  |
| 33 | `nu_pressao_diastolica` | `numeric(3,0)` | não |  |
| 34 | `nu_freq_respiratoria` | `numeric(3,0)` | não |  |
| 35 | `nu_freq_cardiaca` | `numeric(3,0)` | não |  |
| 36 | `nu_temperatura` | `numeric(3,1)` | não |  |
| 37 | `nu_saturacao_o2` | `numeric(3,0)` | não |  |
| 38 | `nu_perimetro_cefalico` | `numeric(5,2)` | não |  |
| 39 | `nu_glicemia` | `numeric(3,0)` | não |  |
| 40 | `co_dim_tipo_glicemia` | `bigint` | não | FK → tb_dim_tipo_glicemia |
| 41 | `ds_filtro_ciap_plano` | `character varying(4000)` | não |  |
| 42 | `ds_filtro_ciap_motivo_consulta` | `character varying(4000)` | não |  |
| 43 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
| 44 | `st_nao_possui_cpf` | `integer` | não |  |
