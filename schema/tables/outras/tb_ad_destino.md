# tb_ad_destino

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_ad_destino` | `bigint` | sim | PK |
| 2 | `no_ad_destino` | `character varying(100)` | não |  |
| 3 | `no_identificador` | `character varying(255)` | sim |  |

Referenciada por: `tb_ad_cidadao`, `tb_atend_prof_ad`, `tb_cds_atend_domiciliar`
