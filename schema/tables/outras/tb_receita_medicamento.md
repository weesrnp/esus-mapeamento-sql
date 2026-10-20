# tb_receita_medicamento

Tipo: tabela  
Grupo: outras  
Colunas: 33

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_receita_medicamento` | `bigint` | sim | PK |
| 2 | `no_posologia` | `character varying(200)` | não |  |
| 3 | `qt_receitada` | `integer` | não |  |
| 4 | `co_aplicacao_medicamento` | `bigint` | não | FK → tb_aplicacao_medicamento |
| 5 | `st_uso_continuo` | `integer` | sim |  |
| 6 | `co_medicamento` | `bigint` | sim | FK → tb_medicamento |
| 8 | `dt_inicio_tratamento` | `date` | não |  |
| 9 | `dt_fim_tratamento` | `date` | não |  |
| 10 | `qt_duracao_tratamento` | `integer` | não |  |
| 11 | `ds_dose` | `character varying(100)` | não |  |
| 12 | `tp_frequencia_dose` | `bigint` | não | FK → tb_receita_tipo_frequencia |
| 13 | `ds_frequencia_dose` | `character varying(25)` | não |  |
| 14 | `st_registro_manual` | `integer` | não |  |
| 15 | `st_dose_unica` | `integer` | não |  |
| 16 | `ds_recomendacao` | `text` | não |  |
| 17 | `qt_periodo_frequencia` | `integer` | não |  |
| 18 | `tp_un_medida_tempo_frequencia` | `bigint` | não |  |
| 19 | `tp_un_medida_tempo_tratamento` | `bigint` | não | FK → tb_unidade_medida_tempo |
| 20 | `co_atend_prof` | `bigint` | não | FK → tb_atend_prof |
| 21 | `tp_receita` | `integer` | não | FK → tb_tipo_receita |
| 22 | `st_interrompido` | `integer` | sim |  |
| 23 | `ds_observacao_interrupcao` | `text` | não |  |
| 24 | `dt_interrupcao` | `date` | não |  |
| 25 | `co_unico_presc_med_rnds` | `character varying(96)` | não |  |
| 26 | `ds_codigo_prescricao_digital` | `character varying(64)` | não |  |
| 27 | `qt_dose` | `character varying(25)` | não |  |
| 28 | `co_unidade_medida_dose` | `bigint` | não | FK → tb_unidade_medida |
| 29 | `qt_dose_manha` | `character varying(25)` | não |  |
| 30 | `qt_dose_tarde` | `character varying(25)` | não |  |
| 31 | `qt_dose_noite` | `character varying(25)` | não |  |
| 32 | `co_receita_uso_continuo_grupo` | `bigint` | não | FK → tb_receita_medicamento |
| 33 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 34 | `co_ciap` | `bigint` | não | FK → tb_ciap |

Referenciada por: `tb_medicamento_uso_continuo`, `tb_receita_medicamento`
