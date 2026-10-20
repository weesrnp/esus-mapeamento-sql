# tb_tipo_glicemia

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_tipo_glicemia` | `bigint` | sim | PK |
| 2 | `no_tipo_glicemia` | `character varying(15)` | sim |  |
| 3 | `no_identificador` | `character varying(30)` | sim |  |

Referenciada por: `tb_cds_visita_domiciliar`, `tb_medicao`
