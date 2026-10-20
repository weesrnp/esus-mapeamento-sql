# ta_atestado

Tipo: tabela  
Grupo: auditoria  
Colunas: 14

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatestado` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_atestado` | `bigint` | não |  |
| 5 | `ds_atestado` | `text` | não |  |
| 6 | `st_impresso` | `integer` | não |  |
| 7 | `co_atend_prof` | `bigint` | não |  |
| 8 | `co_prontuario` | `bigint` | não |  |
| 9 | `im_qrcode_atestado` | `text` | não |  |
| 10 | `tp_atestado` | `integer` | não |  |
| 11 | `dt_afastamento` | `timestamp without time zone` | não |  |
| 12 | `nu_dias` | `integer` | não |  |
| 13 | `co_cid10` | `bigint` | não |  |
| 14 | `st_assinado_digitalmente` | `integer` | não |  |
