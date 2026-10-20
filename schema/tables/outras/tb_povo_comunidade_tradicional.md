# tb_povo_comunidade_tradicional

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_povo_comunidade_tradicional` | `bigint` | sim | PK |
| 2 | `no_povo_comunidade_tradicional` | `character varying(255)` | sim |  |
| 3 | `no_povo_comunidade_trad_filtro` | `character varying(255)` | sim |  |
| 4 | `st_ativo` | `integer` | não |  |

Referenciada por: `tb_info_sociodemograficas`
