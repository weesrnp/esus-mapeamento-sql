# tb_fat_atendimento_domiciliar

Tipo: tabela  
Grupo: fatos  
Colunas: 57

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_atend_domiciliar` | `bigint` | sim | PK |
| 2 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 3 | `nu_atendimento` | `integer` | não |  |
| 4 | `co_dim_tipo_ficha` | `bigint` | não | FK → tb_dim_tipo_ficha |
| 5 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 6 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 7 | `co_dim_turno` | `bigint` | não | FK → tb_dim_turno |
| 8 | `co_dim_profissional_1` | `bigint` | não | FK → tb_dim_profissional |
| 9 | `co_dim_cbo_1` | `bigint` | não | FK → tb_dim_cbo |
| 10 | `co_dim_equipe_1` | `bigint` | não | FK → tb_dim_equipe |
| 11 | `co_dim_unidade_saude_1` | `bigint` | não | FK → tb_dim_unidade_saude |
| 12 | `co_dim_profissional_2` | `bigint` | não | FK → tb_dim_profissional |
| 13 | `co_dim_cbo_2` | `bigint` | não | FK → tb_dim_cbo |
| 14 | `co_dim_equipe_2` | `bigint` | não | FK → tb_dim_equipe |
| 15 | `co_dim_unidade_saude_2` | `bigint` | não | FK → tb_dim_unidade_saude |
| 16 | `nu_cns` | `character(15)` | não |  |
| 17 | `dt_nascimento` | `date` | não |  |
| 18 | `co_dim_faixa_etaria` | `bigint` | não | FK → tb_dim_faixa_etaria |
| 19 | `co_dim_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 20 | `co_dim_local_atendimento` | `bigint` | não | FK → tb_dim_local_atendimento |
| 21 | `co_dim_tipo_atendimento` | `bigint` | não | FK → tb_dim_tipo_atendimento |
| 22 | `co_dim_modalidade_ad` | `bigint` | não | FK → tb_dim_modalidade_ad |
| 23 | `st_condic_acamado` | `integer` | não |  |
| 24 | `st_condic_domiciliado` | `integer` | não |  |
| 25 | `st_condic_ulceras_feridas` | `integer` | não |  |
| 26 | `st_condic_acompanham_nutricion` | `integer` | não |  |
| 27 | `st_condic_uso_sonda_nasogastri` | `integer` | não |  |
| 28 | `st_condic_uso_sonda_nasoentera` | `integer` | não |  |
| 29 | `st_condic_uso_gastrostomia` | `integer` | não |  |
| 30 | `st_condic_uso_colostomia` | `integer` | não |  |
| 31 | `st_condic_uso_cistostomia` | `integer` | não |  |
| 32 | `st_condic_uso_sond_vesic_demor` | `integer` | não |  |
| 33 | `st_condic_acomp_pre_operatorio` | `integer` | não |  |
| 34 | `st_condic_acomp_pos_operatorio` | `integer` | não |  |
| 35 | `st_condic_adapt_uso_ortes_prot` | `integer` | não |  |
| 36 | `st_condic_reabilita_domiciliar` | `integer` | não |  |
| 37 | `st_condic_cuidd_paliat_oncolog` | `integer` | não |  |
| 38 | `st_condic_cuidd_paliat_n_oncol` | `integer` | não |  |
| 39 | `st_condic_oxigenoterapia_domic` | `integer` | não |  |
| 40 | `st_condic_uso_traqueostomia` | `integer` | não |  |
| 41 | `st_condic_uso_aspir_via_aerea` | `integer` | não |  |
| 42 | `st_condic_suport_ventil_cpap` | `integer` | não |  |
| 43 | `st_condic_suport_ventil_bipap` | `integer` | não |  |
| 44 | `st_condic_dialise_peritonial` | `integer` | não |  |
| 45 | `st_condic_paracentese` | `integer` | não |  |
| 46 | `st_condic_medicacao_parenteral` | `integer` | não |  |
| 47 | `ds_filtro_cids` | `character varying(4000)` | não |  |
| 48 | `ds_filtro_ciaps` | `character varying(4000)` | não |  |
| 49 | `ds_filtro_procedimentos` | `character varying(4000)` | não |  |
| 50 | `nu_uuid_dado_transp` | `character varying(92)` | não |  |
| 51 | `co_dim_tipo_origem_dado_transp` | `bigint` | não | FK → tb_dim_tipo_origem_dado_transp |
| 52 | `co_dim_cds_tipo_origem` | `bigint` | não | FK → tb_dim_tipo_origem |
| 53 | `co_dim_conduta_ad` | `bigint` | não | FK → tb_dim_conduta_ad |
| 54 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 55 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 56 | `co_dim_just_nao_possui_cpf` | `bigint` | não | FK → tb_dim_just_nao_possui_cpf |
| 57 | `st_nao_possui_cpf` | `integer` | não |  |
