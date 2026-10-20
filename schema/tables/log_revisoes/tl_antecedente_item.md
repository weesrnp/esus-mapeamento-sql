# tl_antecedente_item

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_antecedente_item` | `bigint` | sim | PK |
| 4 | `co_antecedente_historico` | `bigint` | não |  |
| 5 | `ds_valor_item` | `character varying(255)` | não |  |
| 6 | `st_valor_item` | `integer` | não |  |
| 7 | `tp_antecedente_item` | `bigint` | não |  |
