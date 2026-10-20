# tb_imunobiologico_lote

Tipo: tabela  
Grupo: outras  
Colunas: 9

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_imunobiologico_lote` | `bigint` | sim | PK |
| 2 | `co_imunobiologico` | `bigint` | não | FK → tb_imunobiologico |
| 3 | `ds_lote` | `character varying(255)` | não |  |
| 4 | `ds_lote_filtro` | `character varying(255)` | não |  |
| 5 | `ds_lote_fabricante_filtro` | `character varying(255)` | não |  |
| 6 | `dt_validade` | `date` | não |  |
| 7 | `co_imunobiologico_fabricante` | `bigint` | não | FK → tb_imunobiologico_fabricante |
| 8 | `st_ativo` | `integer` | sim |  |
| 9 | `co_unidade_saude` | `bigint` | não | FK → tb_unidade_saude |

Referenciada por: `tb_registro_vacinacao`
