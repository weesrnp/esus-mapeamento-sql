# tb_cds_ficha_proced

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ficha_proced` | `bigint` | sim | PK |
| 2 | `dt_ficha` | `timestamp without time zone` | não |  |
| 3 | `qt_afericao_pressao_arterial` | `bigint` | não |  |
| 4 | `qt_glicemia` | `bigint` | não |  |
| 5 | `qt_afericao_temperatura` | `bigint` | não |  |
| 6 | `qt_medicao_altura` | `bigint` | não |  |
| 7 | `qt_curativo_simples` | `bigint` | não |  |
| 8 | `qt_medicao_peso` | `bigint` | não |  |
| 9 | `qt_coleta_material` | `bigint` | não |  |
| 10 | `st_ficha` | `integer` | não |  |
| 11 | `tp_cds_origem` | `bigint` | não |  |
| 12 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 13 | `co_cds_prof` | `bigint` | sim | FK → tb_cds_prof |
| 14 | `co_localidade_origem` | `bigint` | não | FK → tb_localidade |
| 15 | `ds_versao_ficha` | `character varying(30)` | não |  |

Referenciada por: `tb_cds_proced`
