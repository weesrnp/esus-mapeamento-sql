# tb_tipo_consulta_odonto

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_consulta_odonto` | `bigint` | sim | PK |
| 2 | `no_tipo_consulta_odonto` | `character varying(255)` | sim |  |
| 3 | `no_identificador` | `character varying(255)` | sim |  |

Referenciada por: `rl_cds_atend_odonto_tipo_cnslt`, `tb_atend_prof_odonto`
