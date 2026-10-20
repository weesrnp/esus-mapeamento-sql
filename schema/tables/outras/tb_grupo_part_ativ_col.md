# tb_grupo_part_ativ_col

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_grupo_part_ativ_col` | `bigint` | sim | PK |
| 2 | `no_grupo` | `character varying(250)` | sim |  |
| 3 | `no_grupo_filtro` | `character varying(250)` | sim |  |
| 4 | `tp_grupo` | `character varying(32)` | sim |  |
| 5 | `dt_ultima_atualizacao` | `timestamp without time zone` | sim |  |
| 6 | `dt_atualizacao_st_ativo` | `timestamp without time zone` | sim |  |
| 7 | `st_ativo` | `integer` | sim |  |
| 8 | `co_lotacao_atualiza_st_ativo` | `bigint` | sim | FK → tb_lotacao |
| 9 | `co_unidade_saude` | `bigint` | sim | FK → tb_unidade_saude |

Referenciada por: `rl_grupo_part_ativ_col_cidadao`, `rl_grupo_part_ativ_col_lotacao`
