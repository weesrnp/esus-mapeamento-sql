# ta_atend_obs_plano_cuidado

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatendobsplanocuidado` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_atend_obs_plano_cuidado` | `bigint` | não |  |
| 5 | `co_atend_prof_obs` | `bigint` | não |  |
| 6 | `ds_descricao` | `text` | não |  |
| 7 | `dt_descricao` | `timestamp without time zone` | não |  |
