# tb_fat_consolidado_cidadao_fci

Tipo: tabela  
Grupo: fatos  
Colunas: 21

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_conslddo_ciddo_fci` | `bigint` | sim | PK |
| 2 | `co_fat_cidadao_pec` | `bigint` | sim | FK → tb_fat_cidadao_pec |
| 3 | `co_dim_tempo_ultima_ficha` | `bigint` | não |  |
| 4 | `co_dim_tempo_has_sim` | `bigint` | não |  |
| 5 | `co_dim_tempo_has_nao` | `bigint` | não |  |
| 6 | `co_dim_tempo_diabete_sim` | `bigint` | não |  |
| 7 | `co_dim_tempo_diabete_nao` | `bigint` | não |  |
| 8 | `co_dim_tempo_fumante_sim` | `bigint` | não |  |
| 9 | `co_dim_tempo_fumante_nao` | `bigint` | não |  |
| 10 | `dt_nascimento` | `date` | não |  |
| 11 | `co_dim_tempo_avc_sim` | `bigint` | não |  |
| 12 | `co_dim_tempo_infarto_sim` | `bigint` | não |  |
| 13 | `co_dim_tempo_donca_crdaca_sim` | `bigint` | não |  |
| 14 | `co_dim_tempo_problema_rins_sim` | `bigint` | não |  |
| 15 | `co_dim_tempo_avc_nao` | `bigint` | não |  |
| 16 | `co_dim_tempo_infarto_nao` | `bigint` | não |  |
| 17 | `co_dim_tempo_donca_crdaca_nao` | `bigint` | não |  |
| 18 | `co_dim_tempo_problema_rins_nao` | `bigint` | não |  |
| 19 | `st_hprtnsao_artrl_ultima_ficha` | `integer` | não |  |
| 20 | `st_diabete_ultima_ficha` | `integer` | não |  |
| 21 | `st_fumante_ultima_ficha` | `integer` | não |  |
