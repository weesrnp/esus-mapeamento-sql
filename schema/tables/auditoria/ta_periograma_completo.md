# ta_periograma_completo

Tipo: tabela  
Grupo: auditoria  
Colunas: 26

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taperiogramacompleto` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_periograma_completo` | `bigint` | não |  |
| 5 | `co_atend_prof_odonto` | `bigint` | não |  |
| 6 | `co_prontuario` | `bigint` | não |  |
| 7 | `co_parte_bucal` | `bigint` | não |  |
| 8 | `st_excluido` | `integer` | não |  |
| 9 | `ds_profundidade_vestibular` | `character varying(9)` | não |  |
| 10 | `ds_recessao_vestibular` | `character varying(11)` | não |  |
| 11 | `st_placa_d_vestibular` | `integer` | não |  |
| 12 | `st_placa_v_vestibular` | `integer` | não |  |
| 13 | `st_placa_m_vestibular` | `integer` | não |  |
| 14 | `st_sangramento_d_vestibular` | `integer` | não |  |
| 15 | `st_sangramento_v_vestibular` | `integer` | não |  |
| 16 | `st_sangramento_m_vestibular` | `integer` | não |  |
| 17 | `ds_profundidade_interna` | `character varying(9)` | não |  |
| 18 | `ds_recessao_interna` | `character varying(11)` | não |  |
| 19 | `st_placa_d_interna` | `integer` | não |  |
| 20 | `st_placa_v_interna` | `integer` | não |  |
| 21 | `st_placa_m_interna` | `integer` | não |  |
| 22 | `st_sangramento_d_interna` | `integer` | não |  |
| 23 | `st_sangramento_v_interna` | `integer` | não |  |
| 24 | `st_sangramento_m_interna` | `integer` | não |  |
| 25 | `ds_mobilidade` | `character varying(1)` | não |  |
| 26 | `ds_lesao_furca` | `character varying(5)` | não |  |
