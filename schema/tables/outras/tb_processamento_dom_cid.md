# tb_processamento_dom_cid

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_processamento_dom_cid` | `bigint` | sim | PK |
| 2 | `co_dado_transp` | `bigint` | sim | FK → tb_dado_transp |
| 3 | `dt_processamento` | `date` | não |  |
| 4 | `ds_mensagem` | `character varying(255)` | não |  |
| 5 | `st_reprocessamento` | `integer` | sim |  |
