# tb_relatorio_processamento

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_relatorio_processamento` | `bigint` | sim | PK |
| 2 | `co_dado_transp` | `bigint` | não | FK → tb_dado_transp |
| 3 | `dt_processamento` | `timestamp without time zone` | não |  |
| 4 | `ds_mensagem_erro` | `character varying(2000)` | não |  |
| 5 | `st_processamento` | `integer` | sim |  |
| 6 | `tp_dado_transp` | `bigint` | não |  |
| 8 | `st_reprocessar` | `integer` | não |  |
