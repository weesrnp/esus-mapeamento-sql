# tl_medicao

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 23

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_medicao` | `bigint` | sim | PK |
| 4 | `dt_medicao` | `timestamp without time zone` | não |  |
| 5 | `tp_glicemia` | `bigint` | não |  |
| 6 | `co_atend_prof` | `bigint` | não |  |
| 7 | `dt_ultima_menstruacao` | `timestamp with time zone` | não |  |
| 8 | `nu_medicao_peso` | `character varying(20)` | não |  |
| 9 | `nu_medicao_altura` | `character varying(20)` | não |  |
| 10 | `nu_medicao_frequencia_cardiaca` | `character varying(20)` | não |  |
| 11 | `nu_medicao_pressao_arterial` | `character varying(20)` | não |  |
| 12 | `nu_medicao_perimetro_cefalico` | `character varying(20)` | não |  |
| 13 | `nu_medicao_frequnca_resprtria` | `character varying(20)` | não |  |
| 14 | `nu_medicao_temperatura` | `character varying(20)` | não |  |
| 15 | `nu_medicao_saturacao_o2` | `character varying(20)` | não |  |
| 16 | `nu_medicao_glicemia` | `character varying(20)` | não |  |
| 17 | `nu_medicao_imc` | `character varying(20)` | não |  |
| 18 | `nu_medicao_altura_uterina` | `character varying(20)` | não |  |
| 19 | `nu_medicao_batimnto_cardco_ftl` | `character varying(20)` | não |  |
| 20 | `nu_medicao_vacinacao_em_dia` | `character varying(20)` | não |  |
| 21 | `nu_perimetro_panturrilha` | `character varying(20)` | não |  |
| 22 | `st_medicao_anterior` | `integer` | não |  |
| 23 | `nu_medicao_circunf_abdominal` | `character varying(20)` | não |  |
