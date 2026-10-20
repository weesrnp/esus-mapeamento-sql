# tb_atend_obs_plano_cuidado

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atend_obs_plano_cuidado` | `bigint` | sim | PK |
| 2 | `co_atend_prof_obs` | `bigint` | sim | FK → tb_atend_prof_obs |
| 3 | `ds_descricao` | `text` | não |  |
| 4 | `dt_descricao` | `timestamp without time zone` | não |  |
