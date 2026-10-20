# ta_config_painel_unidade_saude

Tipo: tabela  
Grupo: auditoria  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taconfigpainelunidadesd` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | não |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | não |  |
| 4 | `co_seq_config_painel_uni_saude` | `bigint` | não |  |
| 5 | `co_unidade_saude` | `bigint` | não |  |
| 6 | `st_habilitado` | `integer` | não |  |
