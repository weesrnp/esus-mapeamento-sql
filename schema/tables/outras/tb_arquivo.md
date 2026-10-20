# tb_arquivo

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_arquivo` | `bigint` | sim | PK |
| 2 | `dt_criacao` | `timestamp without time zone` | sim |  |
| 3 | `ds_hash` | `character varying(64)` | sim |  |
| 4 | `nu_tamanho` | `bigint` | sim |  |
| 5 | `no_arquivo` | `character varying(255)` | sim |  |
| 6 | `co_prof` | `bigint` | sim | FK → tb_prof |
| 7 | `dt_validade` | `date` | não |  |
| 8 | `no_media_type` | `character varying(255)` | sim |  |
| 9 | `co_uuid` | `character varying(36)` | sim |  |

Referenciada por: `rl_arquivo_atendprof`
