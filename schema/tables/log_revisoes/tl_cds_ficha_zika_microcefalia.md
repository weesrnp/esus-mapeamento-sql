# tl_cds_ficha_zika_microcefalia

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 30

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cds_ficha_zica_micrcfl` | `bigint` | sim | PK |
| 4 | `co_cds_turno` | `bigint` | não |  |
| 5 | `co_cds_prof` | `bigint` | não |  |
| 6 | `nu_cns_cidadao` | `character varying(15)` | não |  |
| 7 | `nu_cns_responsavel_familiar` | `character varying(15)` | não |  |
| 8 | `dt_ficha_complementar` | `timestamp with time zone` | não |  |
| 9 | `st_ficha` | `integer` | não |  |
| 10 | `st_enfileirado` | `integer` | não |  |
| 11 | `tp_cds_origem` | `bigint` | não |  |
| 12 | `co_unico_ficha` | `character varying(96)` | não |  |
| 13 | `co_localidade_origem` | `bigint` | não |  |
| 14 | `dt_teste_olhinho` | `timestamp with time zone` | não |  |
| 15 | `co_teste_olhinho` | `bigint` | não |  |
| 16 | `dt_exame_fundo_olho` | `timestamp with time zone` | não |  |
| 17 | `co_exame_fundo_olho` | `bigint` | não |  |
| 18 | `dt_exame_orelhinha` | `timestamp with time zone` | não |  |
| 19 | `co_exame_orelhinha` | `bigint` | não |  |
| 20 | `dt_us_transfontanela` | `timestamp with time zone` | não |  |
| 21 | `co_us_transfontanela` | `bigint` | não |  |
| 22 | `dt_tomografia_computadorizada` | `timestamp with time zone` | não |  |
| 23 | `co_tomografia_computadorizada` | `bigint` | não |  |
| 24 | `dt_ressonancia_magnetica` | `timestamp with time zone` | não |  |
| 25 | `co_ressonancia_magnetica` | `bigint` | não |  |
| 26 | `ds_versao_ficha` | `character varying(30)` | não |  |
| 27 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 28 | `nu_cpf_responsavel` | `character varying(11)` | não |  |
| 29 | `st_nao_possui_cpf` | `integer` | não |  |
| 30 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
