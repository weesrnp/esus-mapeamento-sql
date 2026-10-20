# tb_raca_cor

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_raca_cor` | `bigint` | sim | PK |
| 2 | `no_raca_cor` | `character varying(50)` | sim |  |
| 3 | `nu_ms` | `character varying(100)` | não |  |
| 4 | `no_identificador` | `character varying(255)` | sim |  |
| 5 | `co_raca_cor_cadsus` | `character varying(3)` | não |  |

Referenciada por: `tb_cds_aval_elegibilidade`, `tb_cds_cad_individual`, `tb_cidadao`
