# ta_ator_papel

Tipo: tabela  
Grupo: auditoria  
Colunas: 8

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taatorpapel` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_ator_papel` | `bigint` | não |  |
| 5 | `no_tipo_ator_papel` | `character varying(100)` | não |  |
| 6 | `co_prof` | `bigint` | não |  |
| 7 | `ds_modulo_inicial` | `character varying(255)` | não |  |
| 8 | `st_ativo` | `integer` | não |  |
