# ta_antecedente_item

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taantecedenteitem` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_antecedente_item` | `bigint` | não |  |
| 5 | `co_antecedente_historico` | `bigint` | não |  |
| 6 | `ds_valor_item` | `character varying(4000)` | não |  |
| 7 | `st_valor_item` | `integer` | não |  |
| 8 | `tp_antecedente_item` | `bigint` | não |  |
