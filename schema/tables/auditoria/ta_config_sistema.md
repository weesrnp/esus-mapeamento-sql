# ta_config_sistema

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taconfigsistema` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_config_sistema` | `character varying(255)` | não |  |
| 5 | `ds_config_sistema` | `character varying(255)` | não |  |
| 6 | `st_disponivel_sistema` | `integer` | não |  |
| 7 | `ds_texto` | `character varying(255)` | não |  |
| 8 | `ds_inteiro` | `integer` | não |  |
| 9 | `ds_binario` | `bytea` | não |  |
