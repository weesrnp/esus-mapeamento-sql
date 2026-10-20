# tb_especialidade_sisreg

Tipo: tabela  
Grupo: outras  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_especialidade_sisreg` | `bigint` | sim | PK |
| 2 | `ds_especialidade_sisreg` | `character varying(100)` | sim |  |
| 3 | `ds_especialidade_sisreg_filtro` | `character varying(100)` | sim |  |
| 4 | `co_grupo_especialidade` | `bigint` | sim | FK → tb_grupo_especialidade |
| 5 | `co_cbo` | `bigint` | não | FK → tb_cbo |
| 6 | `tp_encam_odonto` | `bigint` | não | FK → tb_tipo_encam_odonto |
| 7 | `tp_cds_conduta` | `bigint` | não | FK → tb_cds_tipo_conduta |

Referenciada por: `tb_encaminhamento`
