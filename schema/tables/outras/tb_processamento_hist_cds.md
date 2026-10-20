# tb_processamento_hist_cds

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_processamento_hist_cds` | `bigint` | sim | PK |
| 2 | `co_dado_transp` | `bigint` | sim | FK → tb_dado_transp |
| 3 | `dt_processamento` | `date` | não |  |
| 4 | `ds_mensagem` | `character varying(255)` | não |  |
