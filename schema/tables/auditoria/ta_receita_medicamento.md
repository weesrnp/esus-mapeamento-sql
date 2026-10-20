# ta_receita_medicamento

Tipo: tabela  
Grupo: auditoria  
Colunas: 36

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tareceitamedicamento` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_receita_medicamento` | `bigint` | não |  |
| 5 | `no_posologia` | `character varying(200)` | não |  |
| 6 | `qt_receitada` | `integer` | não |  |
| 7 | `co_aplicacao_medicamento` | `bigint` | não |  |
| 8 | `st_uso_continuo` | `integer` | não |  |
| 9 | `co_medicamento` | `bigint` | não |  |
| 10 | `dt_inicio_tratamento` | `date` | não |  |
| 11 | `dt_fim_tratamento` | `date` | não |  |
| 12 | `qt_duracao_tratamento` | `integer` | não |  |
| 13 | `ds_dose` | `character varying(100)` | não |  |
| 14 | `tp_frequencia_dose` | `bigint` | não |  |
| 15 | `ds_frequencia_dose` | `character varying(25)` | não |  |
| 16 | `st_registro_manual` | `integer` | não |  |
| 17 | `st_dose_unica` | `integer` | não |  |
| 18 | `ds_recomendacao` | `text` | não |  |
| 19 | `qt_periodo_frequencia` | `integer` | não |  |
| 20 | `tp_un_medida_tempo_frequencia` | `bigint` | não |  |
| 21 | `tp_un_medida_tempo_tratamento` | `bigint` | não |  |
| 22 | `co_atend_prof` | `bigint` | não |  |
| 23 | `tp_receita` | `integer` | não |  |
| 24 | `st_interrompido` | `integer` | não |  |
| 25 | `ds_observacao_interrupcao` | `text` | não |  |
| 26 | `dt_interrupcao` | `date` | não |  |
| 27 | `co_unico_presc_med_rnds` | `character varying(96)` | não |  |
| 28 | `ds_codigo_prescricao_digital` | `character varying(64)` | não |  |
| 29 | `qt_dose` | `character varying(25)` | não |  |
| 30 | `co_unidade_medida_dose` | `bigint` | não |  |
| 31 | `qt_dose_manha` | `character varying(25)` | não |  |
| 32 | `qt_dose_tarde` | `character varying(25)` | não |  |
| 33 | `qt_dose_noite` | `character varying(25)` | não |  |
| 34 | `co_receita_uso_continuo_grupo` | `bigint` | não |  |
| 35 | `co_cid10` | `bigint` | não |  |
| 36 | `co_ciap` | `bigint` | não |  |
