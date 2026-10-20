# tb_ad_cidadao

Tipo: tabela  
Grupo: outras  
Colunas: 21

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ad_cidadao` | `bigint` | sim | PK |
| 2 | `co_equipe` | `bigint` | não | FK → tb_equipe |
| 3 | `dt_admissao` | `timestamp without time zone` | não |  |
| 4 | `co_ad_modalidade` | `bigint` | não | FK → tb_ad_modalidade |
| 5 | `co_ad_origem` | `bigint` | não | FK → tb_ad_origem |
| 6 | `no_especificacao_origem` | `character varying(255)` | não |  |
| 7 | `co_cid10_principal` | `bigint` | não | FK → tb_cid10 |
| 8 | `co_cid10_causa_associada` | `bigint` | não | FK → tb_cid10 |
| 9 | `co_ad_destino` | `bigint` | não | FK → tb_ad_destino |
| 10 | `dt_saida` | `timestamp without time zone` | não |  |
| 11 | `dt_ultima_visita` | `timestamp without time zone` | não |  |
| 12 | `dt_proxima_visita` | `timestamp without time zone` | não |  |
| 14 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 15 | `co_cid10_secundario_2` | `bigint` | não | FK → tb_cid10 |
| 16 | `dt_reg_obito` | `timestamp with time zone` | não |  |
| 17 | `st_cidadao_sincronizado` | `integer` | não |  |
| 18 | `st_dt_saida_restaurada` | `integer` | não |  |
| 19 | `st_dt_saida_futura` | `integer` | não |  |
| 20 | `nu_documento_obito` | `character varying(16)` | não |  |
| 21 | `co_unico_ad_cidadao_obito` | `bigint` | não |  |
| 22 | `co_unico_ad_cidadao` | `bigint` | não |  |

Referenciada por: `tb_ad_questao`
