# tb_imunobiologico_fabricante

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_imunobiologico_fabrcnt` | `bigint` | sim | PK |
| 2 | `no_fabricante` | `character varying(255)` | não |  |
| 3 | `no_fabricante_filtro` | `character varying(255)` | não |  |
| 4 | `co_fabricante_rnds` | `character varying(10)` | não |  |
| 5 | `st_ativo` | `integer` | sim |  |
| 6 | `sg_fabricante` | `character varying(255)` | não |  |
| 7 | `sg_fabricante_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_imunobiologico_lote`
