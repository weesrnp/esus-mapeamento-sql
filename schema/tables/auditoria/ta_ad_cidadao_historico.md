# ta_ad_cidadao_historico

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taadcidadaohistorico` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_ad_cidadao_historico` | `bigint` | não |  |
| 5 | `co_unico_ad_cidadao` | `bigint` | não |  |
| 6 | `co_ad_modalidade` | `bigint` | não |  |
| 7 | `co_prof` | `bigint` | não |  |
| 8 | `dt_registro` | `timestamp without time zone` | não |  |
| 9 | `co_lotacao` | `bigint` | não |  |
