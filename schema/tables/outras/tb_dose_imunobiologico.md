# tb_dose_imunobiologico

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_dose_imunobiologico` | `bigint` | sim | PK |
| 2 | `sg_dose_imunobiologico` | `character varying(255)` | não |  |
| 3 | `no_dose_imunobiologico` | `character varying(255)` | não |  |
| 4 | `nu_ordem` | `integer` | não |  |
| 5 | `no_apresentacao_dose` | `character varying(255)` | não |  |
| 6 | `no_filtro_dose_imunobiologico` | `character varying(255)` | sim |  |

Referenciada por: `tb_calendario_vacinal`, `tb_cds_vacina`, `tb_registro_vacinacao`, `tb_regra_vacinal_dose`, `tb_regra_vacinal_estrategia`
