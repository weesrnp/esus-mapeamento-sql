# tb_cds_ficha_zika_microcefalia

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 28

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_ficha_zica_micrcfl` | `bigint` | sim | PK |
| 2 | `co_cds_turno` | `bigint` | não | FK → tb_cds_turno |
| 3 | `co_cds_prof` | `bigint` | não | FK → tb_cds_prof |
| 4 | `nu_cns_cidadao` | `character varying(15)` | não |  |
| 5 | `nu_cns_responsavel_familiar` | `character varying(15)` | não |  |
| 6 | `dt_ficha_complementar` | `timestamp with time zone` | não |  |
| 7 | `st_ficha` | `integer` | não |  |
| 8 | `st_enfileirado` | `integer` | não |  |
| 9 | `tp_cds_origem` | `bigint` | não |  |
| 10 | `co_unico_ficha` | `character varying(96)` | sim |  |
| 11 | `co_localidade_origem` | `bigint` | não | FK → tb_localidade |
| 12 | `dt_teste_olhinho` | `timestamp with time zone` | não |  |
| 13 | `co_teste_olhinho` | `bigint` | não | FK → tb_ficha_zika_tipo_exame |
| 14 | `dt_exame_fundo_olho` | `timestamp with time zone` | não |  |
| 15 | `co_exame_fundo_olho` | `bigint` | não | FK → tb_ficha_zika_tipo_exame |
| 16 | `dt_exame_orelhinha` | `timestamp with time zone` | não |  |
| 17 | `co_exame_orelhinha` | `bigint` | não | FK → tb_ficha_zika_tipo_exame |
| 18 | `dt_us_transfontanela` | `timestamp with time zone` | não |  |
| 19 | `co_us_transfontanela` | `bigint` | não | FK → tb_ficha_zika_tipo_exame |
| 20 | `dt_tomografia_computadorizada` | `timestamp with time zone` | não |  |
| 21 | `co_tomografia_computadorizada` | `bigint` | não | FK → tb_ficha_zika_tipo_exame |
| 22 | `dt_ressonancia_magnetica` | `timestamp with time zone` | não |  |
| 23 | `co_ressonancia_magnetica` | `bigint` | não | FK → tb_ficha_zika_tipo_exame |
| 24 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 25 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 26 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
| 27 | `st_nao_possui_cpf` | `integer` | não |  |
| 28 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |
