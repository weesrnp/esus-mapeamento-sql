# tl_adm_municipal

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_ator_papel` | `bigint` | sim | PK |
| 2 | `co_localidade` | `bigint` | não |  |
| 3 | `co_tipo_revisao` | `integer` | não |  |
| 4 | `co_revisao` | `bigint` | sim | PK |
| 5 | `st_ativo` | `integer` | não |  |
| 6 | `ds_autorizacao` | `character varying(225)` | não |  |
| 7 | `st_instalacao_terminada` | `integer` | não |  |
