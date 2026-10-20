# tl_ad_cidadao_historico

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_seq_ad_cidadao_historico` | `bigint` | sim | PK |
| 3 | `co_unico_ad_cidadao` | `bigint` | não |  |
| 4 | `co_ad_modalidade` | `bigint` | não |  |
| 5 | `co_prof` | `bigint` | não |  |
| 6 | `dt_registro` | `timestamp without time zone` | não |  |
| 7 | `co_tipo_revisao` | `integer` | não |  |
| 8 | `co_lotacao` | `bigint` | não |  |
