# ta_grupo_part_ativ_col_lotacao

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tagrupopartativcollotac` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_grupo_part_ac_lotacao` | `bigint` | não |  |
| 5 | `co_grupo_part_ativ_col` | `bigint` | não |  |
| 6 | `co_lotacao` | `bigint` | não |  |
