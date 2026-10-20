# tl_grupo_ativ_col

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_grupo_ativ_col` | `bigint` | sim | PK |
| 4 | `co_unico_grupo` | `character varying(96)` | não |  |
| 5 | `no_grupo` | `character varying(255)` | não |  |
| 6 | `sg_grupo` | `character varying(255)` | não |  |
| 7 | `tp_grupo` | `character varying(32)` | não |  |
| 8 | `co_cor_grupo` | `integer` | não |  |
| 9 | `nu_cnes` | `character varying(20)` | não |  |
| 10 | `dt_ultima_atualizacao` | `timestamp with time zone` | não |  |
| 11 | `dt_ultima_atividade` | `timestamp with time zone` | não |  |
