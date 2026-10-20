# tb_medicao

Tipo: tabela  
Grupo: outras  
Colunas: 33

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_medicao` | `bigint` | sim | PK |
| 2 | `dt_medicao` | `timestamp without time zone` | sim |  |
| 3 | `tp_glicemia` | `bigint` | não | FK → tb_tipo_glicemia |
| 4 | `co_atend_prof` | `bigint` | sim | FK → tb_atend_prof |
| 5 | `dt_ultima_menstruacao` | `timestamp with time zone` | não |  |
| 6 | `nu_medicao_peso` | `character varying(20)` | não |  |
| 7 | `nu_medicao_altura` | `character varying(20)` | não |  |
| 8 | `nu_medicao_frequencia_cardiaca` | `character varying(20)` | não |  |
| 9 | `nu_medicao_pressao_arterial` | `character varying(20)` | não |  |
| 10 | `nu_medicao_perimetro_cefalico` | `character varying(20)` | não |  |
| 11 | `nu_medicao_frequnca_resprtria` | `character varying(20)` | não |  |
| 12 | `nu_medicao_temperatura` | `character varying(20)` | não |  |
| 13 | `nu_medicao_saturacao_o2` | `character varying(20)` | não |  |
| 14 | `nu_medicao_glicemia` | `character varying(20)` | não |  |
| 15 | `nu_medicao_imc` | `character varying(20)` | não |  |
| 16 | `nu_medicao_altura_uterina` | `character varying(20)` | não |  |
| 17 | `nu_medicao_batimnto_cardco_ftl` | `character varying(20)` | não |  |
| 18 | `nu_medicao_vacinacao_em_dia` | `character varying(20)` | não |  |
| 19 | `nu_perimetro_panturrilha` | `character varying(20)` | não |  |
| 20 | `st_medicao_anterior` | `integer` | não |  |
| 21 | `nu_medicao_circunf_abdominal` | `character varying(20)` | não |  |
| 29 | `nu_forca_musc_mao_dir` | `character varying(20)` | não |  |
| 30 | `ds_unidade_forca_musc_mao_dir` | `character varying(20)` | não |  |
| 31 | `nu_forca_musc_mao_esq` | `character varying(20)` | não |  |
| 32 | `ds_unidade_forca_musc_mao_esq` | `character varying(20)` | não |  |
| 33 | `ds_exm_fsc_pele` | `character varying(300)` | não |  |
| 34 | `ds_exm_fsc_olho_dir` | `character varying(250)` | não |  |
| 35 | `ds_exm_fsc_olho_esq` | `character varying(250)` | não |  |
| 36 | `ds_exm_fsc_ouvido_dir` | `character varying(250)` | não |  |
| 37 | `ds_exm_fsc_ouvido_esq` | `character varying(250)` | não |  |
| 38 | `ds_exm_fsc_membro_inf_dir` | `character varying(250)` | não |  |
| 39 | `ds_exm_fsc_membro_inf_esq` | `character varying(250)` | não |  |
| 40 | `nu_med_batimnto_cardco_ftl_2` | `character varying(20)` | não |  |
