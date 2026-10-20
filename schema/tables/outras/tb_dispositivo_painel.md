# tb_dispositivo_painel

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dispositivo_painel` | `bigint` | sim | PK |
| 2 | `co_pin_usuario` | `character varying(4)` | sim |  |
| 3 | `co_uuid_dispositivo` | `character varying(36)` | sim |  |
| 4 | `dt_criacao` | `timestamp without time zone` | sim |  |
| 5 | `no_dispositivo` | `character varying(50)` | não |  |
| 6 | `co_token_acesso` | `character varying(256)` | não |  |
| 7 | `dt_pareamento` | `timestamp without time zone` | não |  |
| 8 | `co_unidade_saude` | `bigint` | não | FK → tb_unidade_saude |
| 9 | `co_ator_papel` | `bigint` | não | FK → tb_ator_papel |
