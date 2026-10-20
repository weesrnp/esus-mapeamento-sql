# ta_dispositivo_painel

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tadispositivopainel` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_dispositivo_painel` | `bigint` | não |  |
| 5 | `co_pin_usuario` | `character varying(4)` | não |  |
| 6 | `co_uuid_dispositivo` | `character varying(36)` | não |  |
| 7 | `dt_criacao` | `timestamp without time zone` | não |  |
| 8 | `no_dispositivo` | `character varying(50)` | não |  |
| 9 | `co_token_acesso` | `character varying(256)` | não |  |
| 10 | `dt_pareamento` | `timestamp without time zone` | não |  |
| 11 | `co_unidade_saude` | `bigint` | não |  |
| 12 | `co_ator_papel` | `bigint` | não |  |
