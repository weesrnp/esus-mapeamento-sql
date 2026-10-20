# ta_imunobiologico_lote

Tipo: tabela  
Grupo: auditoria  
Colunas: 12

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_taimunobiologicolote` | `bigint` | sim | PK |
| 2 | `co_tipo_auditoria` | `character(1)` | sim |  |
| 3 | `dt_auditoria` | `timestamp without time zone` | sim |  |
| 4 | `co_seq_imunobiologico_lote` | `bigint` | não |  |
| 5 | `co_imunobiologico` | `bigint` | não |  |
| 6 | `ds_lote` | `character varying(255)` | não |  |
| 7 | `ds_lote_filtro` | `character varying(255)` | não |  |
| 8 | `ds_lote_fabricante_filtro` | `character varying(255)` | não |  |
| 9 | `dt_validade` | `date` | não |  |
| 10 | `co_imunobiologico_fabricante` | `bigint` | não |  |
| 11 | `st_ativo` | `integer` | não |  |
| 12 | `co_unidade_saude` | `bigint` | não |  |
