# ta_arquivo

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taarquivo` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_arquivo` | `bigint` | não |  |
| 5 | `dt_criacao` | `timestamp without time zone` | não |  |
| 6 | `ds_hash` | `character varying(64)` | não |  |
| 7 | `nu_tamanho` | `bigint` | não |  |
| 8 | `no_arquivo` | `character varying(255)` | não |  |
| 9 | `co_prof` | `bigint` | não |  |
| 10 | `dt_validade` | `date` | não |  |
| 11 | `no_media_type` | `character varying(255)` | não |  |
| 12 | `co_uuid` | `character varying(36)` | não |  |
