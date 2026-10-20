# tb_ad_modalidade

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ad_modalidade` | `bigint` | sim | PK |
| 2 | `no_ad_modalidade` | `character varying(100)` | não |  |
| 3 | `no_identificador` | `character varying(100)` | não |  |

Referenciada por: `tb_ad_cidadao`, `tb_atend_prof_ad`, `tb_cds_atend_domiciliar`, `tb_cds_atend_individual`, `tb_cds_aval_elegibilidade`
