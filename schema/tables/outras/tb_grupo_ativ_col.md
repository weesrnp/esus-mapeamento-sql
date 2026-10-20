# tb_grupo_ativ_col

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_grupo_ativ_col` | `bigint` | sim | PK |
| 2 | `co_unico_grupo` | `character varying(96)` | sim |  |
| 3 | `no_grupo` | `character varying(255)` | não |  |
| 4 | `sg_grupo` | `character varying(255)` | não |  |
| 5 | `tp_grupo` | `character varying(32)` | não |  |
| 6 | `co_cor_grupo` | `integer` | não |  |
| 7 | `nu_cnes` | `character varying(20)` | não |  |
| 8 | `dt_ultima_atualizacao` | `timestamp with time zone` | não |  |
| 9 | `dt_ultima_atividade` | `timestamp with time zone` | não |  |

Referenciada por: `rl_grupo_ativ_col_cidadao`, `rl_grupo_ativ_col_prof`, `tb_ativ_col_grupo`
