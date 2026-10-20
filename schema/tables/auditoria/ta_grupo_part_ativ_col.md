# ta_grupo_part_ativ_col

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tagrupopartativcol` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_grupo_part_ativ_col` | `bigint` | não |  |
| 5 | `no_grupo` | `character varying(250)` | não |  |
| 6 | `no_grupo_filtro` | `character varying(250)` | não |  |
| 7 | `tp_grupo` | `character varying(32)` | não |  |
| 8 | `dt_ultima_atualizacao` | `timestamp without time zone` | não |  |
| 9 | `dt_atualizacao_st_ativo` | `timestamp without time zone` | não |  |
| 10 | `st_ativo` | `integer` | não |  |
| 11 | `co_lotacao_atualiza_st_ativo` | `bigint` | não |  |
| 12 | `co_unidade_saude` | `bigint` | não |  |
