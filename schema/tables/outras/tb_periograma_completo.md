# tb_periograma_completo

Tipo: tabela  
Grupo: outras  
Colunas: 23

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_periograma_completo` | `bigint` | sim | PK |
| 2 | `co_atend_prof_odonto` | `bigint` | sim | FK → tb_atend_prof_odonto |
| 3 | `co_prontuario` | `bigint` | sim | FK → tb_prontuario |
| 4 | `co_parte_bucal` | `bigint` | sim | FK → tb_parte_bucal |
| 5 | `st_excluido` | `integer` | sim |  |
| 6 | `ds_profundidade_vestibular` | `character varying(9)` | não |  |
| 7 | `ds_recessao_vestibular` | `character varying(11)` | não |  |
| 8 | `st_placa_d_vestibular` | `integer` | não |  |
| 9 | `st_placa_v_vestibular` | `integer` | não |  |
| 10 | `st_placa_m_vestibular` | `integer` | não |  |
| 11 | `st_sangramento_d_vestibular` | `integer` | não |  |
| 12 | `st_sangramento_v_vestibular` | `integer` | não |  |
| 13 | `st_sangramento_m_vestibular` | `integer` | não |  |
| 14 | `ds_profundidade_interna` | `character varying(9)` | não |  |
| 15 | `ds_recessao_interna` | `character varying(11)` | não |  |
| 16 | `st_placa_d_interna` | `integer` | não |  |
| 17 | `st_placa_v_interna` | `integer` | não |  |
| 18 | `st_placa_m_interna` | `integer` | não |  |
| 19 | `st_sangramento_d_interna` | `integer` | não |  |
| 20 | `st_sangramento_v_interna` | `integer` | não |  |
| 21 | `st_sangramento_m_interna` | `integer` | não |  |
| 22 | `ds_mobilidade` | `character varying(1)` | não |  |
| 23 | `ds_lesao_furca` | `character varying(5)` | não |  |
