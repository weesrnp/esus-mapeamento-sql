# tb_etnia

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_etnia` | `bigint` | sim | PK |
| 2 | `no_etnia` | `character varying(255)` | sim |  |
| 3 | `co_etnia_cadsus` | `character varying(4)` | não |  |

Referenciada por: `tb_cds_aval_elegibilidade`, `tb_cds_cad_individual`, `tb_cidadao`
