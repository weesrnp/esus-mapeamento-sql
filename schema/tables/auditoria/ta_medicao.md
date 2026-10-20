# ta_medicao

Tipo: tabela  
Grupo: auditoria  
Colunas: 43

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tamedicao` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_medicao` | `bigint` | não |  |
| 5 | `dt_medicao` | `timestamp without time zone` | não |  |
| 6 | `tp_glicemia` | `bigint` | não |  |
| 7 | `co_atend_prof` | `bigint` | não |  |
| 8 | `dt_ultima_menstruacao` | `timestamp with time zone` | não |  |
| 9 | `nu_medicao_peso` | `character varying(20)` | não |  |
| 10 | `nu_medicao_altura` | `character varying(20)` | não |  |
| 11 | `nu_medicao_frequencia_cardiaca` | `character varying(20)` | não |  |
| 12 | `nu_medicao_pressao_arterial` | `character varying(20)` | não |  |
| 13 | `nu_medicao_perimetro_cefalico` | `character varying(20)` | não |  |
| 14 | `nu_medicao_frequnca_resprtria` | `character varying(20)` | não |  |
| 15 | `nu_medicao_temperatura` | `character varying(20)` | não |  |
| 16 | `nu_medicao_saturacao_o2` | `character varying(20)` | não |  |
| 17 | `nu_medicao_glicemia` | `character varying(20)` | não |  |
| 18 | `nu_medicao_imc` | `character varying(20)` | não |  |
| 19 | `nu_medicao_altura_uterina` | `character varying(20)` | não |  |
| 20 | `nu_medicao_batimnto_cardco_ftl` | `character varying(20)` | não |  |
| 21 | `nu_medicao_vacinacao_em_dia` | `character varying(20)` | não |  |
| 22 | `nu_perimetro_panturrilha` | `character varying(20)` | não |  |
| 23 | `st_medicao_anterior` | `integer` | não |  |
| 24 | `nu_medicao_circunf_abdominal` | `character varying(20)` | não |  |
| 25 | `nu_medicao_apgar_um` | `character varying(20)` | não |  |
| 26 | `nu_medicao_apgar_cinco` | `character varying(20)` | não |  |
| 27 | `nu_medicao_apgar_dez` | `character varying(20)` | não |  |
| 28 | `tp_gravidez` | `integer` | não |  |
| 29 | `tp_parto` | `integer` | não |  |
| 30 | `nu_medicao_ig_semanas` | `character varying(20)` | não |  |
| 31 | `nu_medicao_ig_dias` | `character varying(20)` | não |  |
| 32 | `nu_forca_musc_mao_dir` | `character varying(20)` | não |  |
| 33 | `ds_unidade_forca_musc_mao_dir` | `character varying(20)` | não |  |
| 34 | `nu_forca_musc_mao_esq` | `character varying(20)` | não |  |
| 35 | `ds_unidade_forca_musc_mao_esq` | `character varying(20)` | não |  |
| 36 | `ds_exm_fsc_pele` | `character varying(300)` | não |  |
| 37 | `ds_exm_fsc_olho_dir` | `character varying(250)` | não |  |
| 38 | `ds_exm_fsc_olho_esq` | `character varying(250)` | não |  |
| 39 | `ds_exm_fsc_ouvido_dir` | `character varying(250)` | não |  |
| 40 | `ds_exm_fsc_ouvido_esq` | `character varying(250)` | não |  |
| 41 | `ds_exm_fsc_membro_inf_dir` | `character varying(250)` | não |  |
| 42 | `ds_exm_fsc_membro_inf_esq` | `character varying(250)` | não |  |
| 43 | `nu_med_batimnto_cardco_ftl_2` | `character varying(20)` | não |  |
