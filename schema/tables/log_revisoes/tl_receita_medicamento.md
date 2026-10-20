# tl_receita_medicamento

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 22

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_receita_medicamento` | `bigint` | sim | PK |
| 4 | `no_posologia` | `character varying(200)` | não |  |
| 5 | `qt_receitada` | `integer` | não |  |
| 6 | `co_aplicacao_medicamento` | `bigint` | não |  |
| 7 | `st_uso_continuo` | `integer` | não |  |
| 8 | `co_medicamento` | `bigint` | não |  |
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
