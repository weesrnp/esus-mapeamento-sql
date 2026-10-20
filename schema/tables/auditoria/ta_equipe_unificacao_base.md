# ta_equipe_unificacao_base

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taequipeunificacaobase` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_equipe_unificacao_base` | `bigint` | não |  |
| 5 | `nu_ine` | `character varying(20)` | não |  |
| 6 | `nu_cnes` | `character varying(20)` | não |  |
| 7 | `st_criado_unificacao` | `integer` | não |  |
| 8 | `co_unificacao_base` | `bigint` | não |  |
