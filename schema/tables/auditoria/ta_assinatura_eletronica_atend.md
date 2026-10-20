# ta_assinatura_eletronica_atend

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taassinaturaeletronctnd` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_assinatura_eletro_atend` | `bigint` | não |  |
| 5 | `bl_arquivo_assinado` | `bytea` | não |  |
| 6 | `dt_assinatura` | `timestamp with time zone` | não |  |
| 7 | `st_assinatura` | `bigint` | não |  |
| 8 | `co_atend_prof` | `bigint` | não |  |
