# ta_sala_unidade_saude

Tipo: tabela  
Grupo: auditoria  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tasalaunidadesaude` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_sala_unidade_saude` | `bigint` | não |  |
| 5 | `no_sala` | `character varying(50)` | não |  |
| 6 | `co_unidade_saude` | `bigint` | não |  |
| 7 | `st_ativo` | `integer` | não |  |
