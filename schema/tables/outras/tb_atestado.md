# tb_atestado

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_atestado` | `bigint` | sim | PK |
| 3 | `ds_atestado` | `text` | não |  |
| 5 | `co_atend_prof` | `bigint` | não | FK → tb_atend_prof |
| 6 | `co_prontuario` | `bigint` | não | FK → tb_prontuario |
| 8 | `tp_atestado` | `integer` | não |  |
| 9 | `dt_afastamento` | `timestamp without time zone` | não |  |
| 10 | `nu_dias` | `integer` | não |  |
| 11 | `co_cid10` | `bigint` | não | FK → tb_cid10 |
| 12 | `st_assinado_digitalmente` | `integer` | não |  |
