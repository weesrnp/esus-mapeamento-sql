# tb_importacao_bolsa_familia

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_importaca_bolsa_familia` | `bigint` | sim | PK |
| 2 | `co_prof` | `bigint` | sim | FK → tb_prof |
| 3 | `co_localidade` | `bigint` | sim | FK → tb_localidade |
| 4 | `ds_vigencia` | `character varying(6)` | sim |  |
| 5 | `dt_importacao_inicio` | `timestamp without time zone` | sim |  |
| 6 | `dt_importacao_fim` | `timestamp without time zone` | não |  |
| 7 | `st_importacao` | `character varying(255)` | sim |  |
| 8 | `ds_hash_arquivo` | `character varying(64)` | sim |  |
| 9 | `st_complementar` | `integer` | sim |  |
| 10 | `st_vig_mais_recente_localidade` | `integer` | não |  |

Referenciada por: `tb_cidadao_bolsa_familia`
