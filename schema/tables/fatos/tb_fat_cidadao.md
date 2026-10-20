# tb_fat_cidadao

Tipo: tabela  
Grupo: fatos  
Colunas: 38

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_cidadao` | `bigint` | sim | PK |
| 2 | `nu_uuid_ficha` | `character varying(92)` | não |  |
| 3 | `nu_uuid_ficha_origem` | `character varying(96)` | não |  |
| 4 | `nu_cns` | `character(15)` | não |  |
| 5 | `co_fat_cad_individual` | `bigint` | não |  |
| 6 | `co_fat_familia` | `bigint` | não |  |
| 7 | `co_dim_tempo` | `bigint` | não | FK → tb_dim_tempo |
| 8 | `co_fat_cidadao_raiz` | `bigint` | não |  |
| 9 | `co_fat_cidadao_pai1` | `bigint` | não |  |
| 10 | `co_fat_cidadao_pai2` | `bigint` | não |  |
| 11 | `co_dim_tempo_validade` | `bigint` | não | FK → tb_dim_tempo |
| 12 | `co_dim_linha_tempo_validade` | `bigint` | não | FK → tb_dim_tempo |
| 13 | `co_fat_cidadao_raiz_equipe` | `bigint` | não |  |
| 14 | `co_fat_cidadao_pai1_equipe` | `bigint` | não |  |
| 15 | `co_fat_cidadao_pai2_equipe` | `bigint` | não |  |
| 16 | `co_dim_tempo_valdd_equipe` | `bigint` | não | FK → tb_dim_tempo |
| 17 | `co_dim_linha_tempo_valdd_equp` | `bigint` | não | FK → tb_dim_tempo |
| 18 | `co_fat_cidadao_raiz_undde_sade` | `bigint` | não |  |
| 19 | `co_fat_cidadao_pai1_undde_sade` | `bigint` | não |  |
| 20 | `co_fat_cidadao_pai2_undde_sade` | `bigint` | não |  |
| 21 | `co_dim_tempo_valdd_unidd_saud` | `bigint` | não | FK → tb_dim_tempo |
| 22 | `co_dim_lnh_vldd_unidd_sad` | `bigint` | não | FK → tb_dim_tempo |
| 23 | `co_fat_cidadao_raiz_municipio` | `bigint` | não |  |
| 24 | `co_fat_cidadao_pai1_municipio` | `bigint` | não |  |
| 25 | `co_fat_cidadao_pai2_municipio` | `bigint` | não |  |
| 26 | `co_dim_tempo_valdd_municipio` | `bigint` | não | FK → tb_dim_tempo |
| 27 | `co_dim_linha_valdd_municipio` | `bigint` | não | FK → tb_dim_tempo |
| 28 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 29 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 30 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 31 | `st_responsavel_familiar` | `integer` | não |  |
| 32 | `st_mudou` | `integer` | não |  |
| 33 | `st_vivo` | `integer` | não |  |
| 34 | `st_ativo_territorio` | `integer` | não |  |
| 35 | `st_processo_linha_tempo` | `integer` | não |  |
| 36 | `st_processo_familia` | `integer` | não |  |
| 37 | `st_ficha_inativa` | `integer` | não |  |
| 38 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
