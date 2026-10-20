# tb_nodo

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_nodo` | `bigint` | sim | PK |
| 2 | `no_servidor` | `character varying(60)` | não |  |
| 3 | `ds_nome` | `character varying(255)` | não |  |
| 4 | `st_ativo` | `integer` | não |  |
| 5 | `st_conexao` | `integer` | não |  |
| 6 | `dt_testeconexao` | `timestamp without time zone` | não |  |

Referenciada por: `tb_lote_transp_item_nodo`, `tb_lote_transp_nodo`
