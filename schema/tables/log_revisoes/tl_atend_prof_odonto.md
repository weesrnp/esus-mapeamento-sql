# tl_atend_prof_odonto

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_atend_prof_odonto` | `bigint` | sim | PK |
| 4 | `tp_consulta_odonto` | `bigint` | não |  |
| 5 | `ds_observacao_rpc` | `character varying(400)` | não |  |
