# tb_ad_origem

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_ad_origem` | `bigint` | sim | PK |
| 2 | `no_ad_origem` | `character varying(100)` | não |  |
| 3 | `nu_ordem_origem` | `integer` | não |  |
| 4 | `no_identificador` | `character varying(255)` | não |  |

Referenciada por: `tb_ad_cidadao`, `tb_atend_prof_ad`, `tb_cds_aval_elegibilidade`
