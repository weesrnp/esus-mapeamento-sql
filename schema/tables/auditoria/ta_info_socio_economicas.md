# ta_info_socio_economicas

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tainfosocioeconomicas` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_info_socio_economicas` | `bigint` | não |  |
| 5 | `co_cidadao` | `bigint` | não |  |
| 6 | `st_alim_acab_antes_dinh_compr` | `integer` | não |  |
| 7 | `st_comeu_alguns_alim_dinh_aca` | `integer` | não |  |
