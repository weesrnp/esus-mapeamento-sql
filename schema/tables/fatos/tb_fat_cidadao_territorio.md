# tb_fat_cidadao_territorio

Tipo: tabela  
Grupo: fatos  
Colunas: 17

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_cidadao_territorio` | `bigint` | sim | PK |
| 2 | `co_dim_municipio` | `bigint` | não | FK → tb_dim_municipio |
| 3 | `co_dim_unidade_saude` | `bigint` | não | FK → tb_dim_unidade_saude |
| 4 | `co_dim_equipe` | `bigint` | não | FK → tb_dim_equipe |
| 5 | `nu_micro_area` | `character varying(3)` | não |  |
| 6 | `co_fat_cidadao_pec` | `bigint` | não | FK → tb_fat_cidadao_pec |
| 7 | `st_responsavel` | `integer` | não |  |
| 8 | `st_responsavel_informado` | `integer` | não |  |
| 9 | `st_mudou_se` | `integer` | não |  |
| 10 | `st_vivo` | `integer` | não |  |
| 11 | `st_responsavel_com_fci` | `integer` | não |  |
| 12 | `st_cns_null` | `integer` | não |  |
| 13 | `st_cidadao_consistente` | `integer` | não |  |
| 14 | `co_fat_familia_territorio` | `bigint` | não |  |
| 15 | `co_fat_ciddo_terrtrio_resp` | `bigint` | não |  |
| 16 | `st_processado_cidadao_respnsvl` | `integer` | não |  |
| 17 | `co_fat_cad_individual` | `bigint` | não |  |

Referenciada por: `tb_fat_familia_territorio`
