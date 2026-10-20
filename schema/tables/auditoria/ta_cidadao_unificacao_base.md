# ta_cidadao_unificacao_base

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tacidadaounificacaobase` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_cidadao_unificacao_base` | `bigint` | não |  |
| 5 | `nu_cpf` | `character varying(11)` | não |  |
| 6 | `nu_cns` | `character varying(16)` | não |  |
| 7 | `st_documentos_cidadao` | `integer` | não |  |
| 8 | `co_cidadao` | `bigint` | não |  |
| 9 | `co_unificacao_base` | `bigint` | não |  |
