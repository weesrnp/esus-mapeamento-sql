# tl_cds_atend_domiciliar

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 20

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_cds_atend_domiciliar` | `bigint` | sim | PK |
| 4 | `co_cds_ficha_atend_domiciliar` | `bigint` | não |  |
| 5 | `co_cds_turno` | `bigint` | não |  |
| 6 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 7 | `dt_nascimento` | `timestamp with time zone` | não |  |
| 8 | `co_sexo` | `bigint` | não |  |
| 9 | `co_local_atend` | `bigint` | não |  |
| 10 | `co_ad_modalidade` | `bigint` | não |  |
| 11 | `tp_atend_v20` | `bigint` | não |  |
| 12 | `co_cid10` | `bigint` | não |  |
| 13 | `co_ciap` | `bigint` | não |  |
| 14 | `co_ad_destino_v20` | `bigint` | não |  |
| 15 | `st_inicio_acompanhamento_obito` | `integer` | não |  |
| 16 | `co_ad_destino` | `bigint` | não |  |
| 17 | `tp_atend` | `bigint` | não |  |
| 18 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 19 | `st_nao_possui_cpf` | `integer` | não |  |
| 20 | `co_justifica_nao_possui_cpf` | `bigint` | não |  |
