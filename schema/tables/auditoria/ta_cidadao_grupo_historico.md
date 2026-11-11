# ta_cidadao_grupo_historico

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacidadaogrupohistorico` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_cid_grupo_historico` | `bigint` | não |  |
| 5 | `co_cidadao_grupo` | `bigint` | não |  |
| 6 | `co_tipo_documento_cidadao` | `bigint` | não |  |
| 7 | `ds_documento` | `character varying(16)` | não |  |
| 8 | `dt_exclusao` | `timestamp without time zone` | não |  |
