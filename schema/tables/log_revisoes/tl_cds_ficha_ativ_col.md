# tl_cds_ficha_ativ_col

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 23

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_inep_escola` | `bigint` | não |  |
| 2 | `co_seq_cds_ficha_ativ_col` | `bigint` | sim | PK |
| 3 | `co_unico_ficha` | `character varying(96)` | não |  |
| 4 | `ds_local_ativ` | `character varying(500)` | não |  |
| 5 | `dt_ativ_col` | `timestamp without time zone` | não |  |
| 6 | `hr_fim` | `timestamp without time zone` | não |  |
| 7 | `hr_inicio` | `timestamp without time zone` | não |  |
| 8 | `qt_avaliacao_alterada` | `integer` | não |  |
| 9 | `qt_participante_ativ` | `integer` | não |  |
| 10 | `qt_participante_programado` | `integer` | não |  |
| 11 | `st_ficha` | `integer` | não |  |
| 12 | `tp_cds_ativ_col` | `bigint` | não |  |
| 13 | `tp_cds_origem` | `bigint` | não |  |
| 14 | `co_revisao` | `bigint` | sim | PK |
| 15 | `co_tipo_revisao` | `integer` | não |  |
| 16 | `co_cds_prof_responsavel` | `bigint` | não |  |
| 17 | `co_localidade_origem` | `bigint` | não |  |
| 18 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 19 | `co_cds_turno` | `bigint` | não |  |
| 20 | `nu_cnes` | `character varying(20)` | não |  |
| 21 | `co_proced_sigtap` | `bigint` | não |  |
| 22 | `st_pse_educacao` | `integer` | não |  |
| 23 | `st_pse_saude` | `integer` | não |  |
