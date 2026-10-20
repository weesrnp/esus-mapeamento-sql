# ta_nodo

Tipo: tabela  
Grupo: auditoria  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_tanodo` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_nodo` | `bigint` | não |  |
| 5 | `no_servidor` | `character varying(60)` | não |  |
| 6 | `ds_nome` | `character varying(255)` | não |  |
| 7 | `st_ativo` | `integer` | não |  |
| 8 | `st_conexao` | `integer` | não |  |
| 9 | `dt_testeconexao` | `timestamp without time zone` | não |  |
