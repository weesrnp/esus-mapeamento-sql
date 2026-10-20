# ta_atend_prof_odonto

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatendprofodonto` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_atend_prof_odonto` | `bigint` | não |  |
| 5 | `tp_consulta_odonto` | `bigint` | não |  |
| 6 | `ds_observacao_rpc` | `character varying(400)` | não |  |
