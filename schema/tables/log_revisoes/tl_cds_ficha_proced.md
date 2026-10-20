# tl_cds_ficha_proced

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ficha_proced` | `bigint` | sim | PK |
| 2 | `co_unico_ficha` | `character varying(96)` | não |  |
| 3 | `dt_ficha` | `timestamp without time zone` | não |  |
| 4 | `qt_afericao_pressao_arterial` | `bigint` | não |  |
| 5 | `qt_afericao_temperatura` | `bigint` | não |  |
| 6 | `qt_coleta_material` | `bigint` | não |  |
| 7 | `qt_curativo_simples` | `bigint` | não |  |
| 8 | `qt_glicemia` | `bigint` | não |  |
| 9 | `qt_medicao_altura` | `bigint` | não |  |
| 10 | `qt_medicao_peso` | `bigint` | não |  |
| 11 | `st_ficha` | `integer` | não |  |
| 12 | `tp_cds_origem` | `bigint` | não |  |
| 13 | `co_revisao` | `bigint` | sim | PK |
| 14 | `co_tipo_revisao` | `integer` | não |  |
| 15 | `co_cds_prof` | `bigint` | não |  |
| 16 | `co_localidade_origem` | `bigint` | não |  |
| 17 | `ds_versao_ficha` | `character varying(30)` | não |  |
