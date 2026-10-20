# tl_imunobiologico_lote

Tipo: tabela  
Grupo: log_revisoes  
Colunas: 11

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_revisao` | `bigint` | sim | PK |
| 2 | `co_tipo_revisao` | `integer` | não |  |
| 3 | `co_seq_imunobiologico_lote` | `bigint` | sim | PK |
| 4 | `co_imunobiologico` | `bigint` | não |  |
| 5 | `ds_lote` | `character varying(255)` | não |  |
| 6 | `ds_lote_filtro` | `character varying(255)` | não |  |
| 7 | `ds_lote_fabricante_filtro` | `character varying(255)` | não |  |
| 8 | `dt_validade` | `date` | não |  |
| 9 | `co_imunobiologico_fabricante` | `bigint` | não |  |
| 10 | `st_ativo` | `integer` | não |  |
| 11 | `co_unidade_saude` | `bigint` | não |  |
