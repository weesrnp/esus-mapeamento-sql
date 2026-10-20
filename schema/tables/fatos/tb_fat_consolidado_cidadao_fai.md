# tb_fat_consolidado_cidadao_fai

Tipo: tabela  
Grupo: fatos  
Colunas: 26

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_conslddo_ciddo_fai` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 3 | `co_dim_tempo_ultima_ficha` | `bigint` | não |  |
| 4 | `co_dim_tempo_has` | `bigint` | não |  |
| 5 | `co_dim_tempo_diabetes` | `bigint` | não |  |
| 6 | `co_dim_tempo_tabagismo` | `bigint` | não |  |
| 7 | `co_dim_tempo_obesidade` | `bigint` | não |  |
| 8 | `co_dim_tempo_avc` | `bigint` | não |  |
| 9 | `co_dim_tempo_infarto` | `bigint` | não |  |
| 10 | `co_dim_tempo_doenca_cardiaca` | `bigint` | não |  |
| 11 | `co_dim_tempo_problema_rins` | `bigint` | não |  |
| 12 | `co_dim_tempo_rastr_rsco_crdo` | `bigint` | não |  |
| 13 | `nu_altura` | `double precision` | não |  |
| 14 | `nu_peso` | `double precision` | não |  |
| 15 | `st_risco_cardio` | `integer` | não |  |
| 16 | `co_dim_tempo_consulta_purperio` | `bigint` | não |  |
| 17 | `st_teste_pezinho` | `integer` | não |  |
| 18 | `st_teste_orelhinha` | `integer` | não |  |
| 19 | `st_teste_olhinho` | `integer` | não |  |
| 20 | `co_dim_tempo_consulta_prcltra` | `bigint` | não |  |
| 21 | `co_dim_aleitamento_prcltra` | `bigint` | não |  |
| 22 | `nu_perimetro_cefalico_prcltra` | `double precision` | não |  |
| 23 | `nu_altura_prcltra` | `double precision` | não |  |
| 24 | `nu_peso_prcltra` | `double precision` | não |  |
| 25 | `co_dim_tempo_cnslta_1_prcltra` | `bigint` | não |  |
| 26 | `st_vacinacao_em_dia_prcltra` | `integer` | não |  |
