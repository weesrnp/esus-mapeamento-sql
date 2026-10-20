# ta_modelo_personalizado

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tamodelopersonalizado` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_modelo_personalizado` | `bigint` | não |  |
| 5 | `no_modelo` | `character varying(255)` | não |  |
| 6 | `co_ator_papel_criador` | `bigint` | não |  |
| 7 | `st_publico` | `integer` | não |  |
| 8 | `tp_modulo` | `bigint` | não |  |
| 9 | `ds_modelo_personalizado` | `json` | não |  |
