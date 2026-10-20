# tb_sexo

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_sexo` | `bigint` | sim | PK |
| 2 | `no_sexo` | `character varying(15)` | sim |  |
| 3 | `sg_sexo` | `character varying(1)` | sim |  |
| 4 | `no_identificador` | `character varying(30)` | sim |  |
| 5 | `co_sexo_cadsus` | `character varying(1)` | não |  |

Referenciada por: `rl_calendario_vacnl_grupo_alvo`, `tb_ativ_col_cidadao_particip`, `tb_cds_atend_domiciliar`, `tb_cds_atend_individual`, `tb_cds_atend_odonto`, `tb_cds_ativ_col_participante`, `tb_cds_aval_elegibilidade`, `tb_cds_cad_individual`, `tb_cds_ficha_consumo_alimentar`, `tb_cds_proced`, `tb_cds_vacinacao`, `tb_cds_visita_domiciliar`, `tb_regra_vacinal_dose`, `tb_tipo_exame`
