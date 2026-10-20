# tb_cds_imunobiologico_fabrcnt

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_imunobiol_fabrc` | `bigint` | sim | PK |
| 2 | `no_fabricante` | `character varying(255)` | sim |  |
| 3 | `no_fabricante_filtro` | `character varying(255)` | sim |  |
| 4 | `co_rnds` | `character varying(10)` | não |  |
| 5 | `sg_fabricante` | `character varying(255)` | não |  |
| 6 | `sg_fabricante_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_cds_vacina`
