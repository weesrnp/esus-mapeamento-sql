# tb_renda_familiar

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_renda_familiar` | `bigint` | sim | PK |
| 2 | `no_renda_familiar` | `character varying(255)` | sim |  |
| 3 | `co_ordem` | `bigint` | não |  |

Referenciada por: `tb_cds_domicilio_familia`
