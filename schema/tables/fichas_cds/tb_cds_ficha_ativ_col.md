# tb_cds_ficha_ativ_col

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 21

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ficha_ativ_col` | `bigint` | sim | PK |
| 2 | `dt_ativ_col` | `timestamp without time zone` | não |  |
| 3 | `hr_inicio` | `timestamp without time zone` | não |  |
| 4 | `hr_fim` | `timestamp without time zone` | não |  |
| 5 | `co_inep_escola` | `bigint` | não |  |
| 6 | `ds_local_ativ` | `character varying(500)` | não |  |
| 7 | `st_ficha` | `integer` | não |  |
| 8 | `tp_cds_origem` | `bigint` | não |  |
| 9 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 10 | `qt_avaliacao_alterada` | `integer` | não |  |
| 11 | `qt_participante_ativ` | `integer` | não |  |
| 12 | `qt_participante_programado` | `integer` | não |  |
| 13 | `tp_cds_ativ_col` | `bigint` | não | FK → tb_cds_tipo_ativ_col |
| 14 | `co_cds_prof_responsavel` | `bigint` | sim | FK → tb_cds_prof |
| 15 | `co_localidade_origem` | `bigint` | não | FK → tb_localidade |
| 16 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 17 | `co_cds_turno` | `bigint` | não | FK → tb_cds_turno |
| 18 | `nu_cnes` | `character varying(20)` | não |  |
| 19 | `co_proced_sigtap` | `bigint` | não | FK → tb_proced |
| 20 | `st_pse_educacao` | `integer` | não |  |
| 21 | `st_pse_saude` | `integer` | não |  |

Referenciada por: `rl_cds_ficha_ativ_col_pratica`, `rl_cds_ficha_ativ_col_prof`, `rl_cds_ficha_ativ_col_pub_alvo`, `rl_cds_ficha_ativ_col_tema`, `tb_cds_ativ_col_participante`
