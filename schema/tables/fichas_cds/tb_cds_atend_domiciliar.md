# tb_cds_atend_domiciliar

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 18

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_atend_domiciliar` | `bigint` | sim | PK |
| 2 | `co_cds_ficha_atend_domiciliar` | `bigint` | não | FK → tb_cds_ficha_atend_domiciliar |
| 3 | `co_cds_turno` | `bigint` | não | FK → tb_cds_turno |
| 4 | `nu_cartao_sus` | `character varying(255)` | não |  |
| 5 | `dt_nascimento` | `timestamp with time zone` | não |  |
| 6 | `co_sexo` | `bigint` | não | FK → tb_sexo |
| 7 | `co_local_atend` | `bigint` | não | FK → tb_local_atend |
| 8 | `co_ad_modalidade` | `bigint` | não | FK → tb_ad_modalidade |
| 9 | `tp_atend_v20` | `bigint` | não | FK → tb_tipo_atend |
| 10 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 11 | `co_ciap` | `bigint` | não | FK → tb_ciap |
| 12 | `co_ad_destino_v20` | `bigint` | não | FK → tb_ad_destino |
| 13 | `st_inicio_acompanhamento_obito` | `integer` | não |  |
| 14 | `co_ad_destino` | `bigint` | não | FK → tb_ad_destino |
| 15 | `tp_atend` | `bigint` | não | FK → tb_tipo_atend |
| 16 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 17 | `st_nao_possui_cpf` | `integer` | não |  |
| 18 | `co_justifica_nao_possui_cpf` | `bigint` | não | FK → tb_justifica_nao_possui_cpf |

Referenciada por: `rl_cds_atend_dom_proced`, `rl_cds_atend_dom_situacao_pres`
