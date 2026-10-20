# tb_justifica_nao_possui_cpf

Tipo: tabela  
Grupo: outras  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_justifica_nao_possui_cpf` | `bigint` | sim | PK |
| 2 | `no_justifica_nao_possui_cpf` | `character varying(255)` | não |  |
| 3 | `co_justifica_cadsus` | `bigint` | não |  |

Referenciada por: `tb_ativ_col_cidadao_particip`, `tb_cds_atend_domiciliar`, `tb_cds_atend_individual`, `tb_cds_atend_odonto`, `tb_cds_ativ_col_participante`, `tb_cds_aval_elegibilidade`, `tb_cds_cad_individual`, `tb_cds_ficha_consumo_alimentar`, `tb_cds_ficha_zika_microcefalia`, `tb_cds_proced`, `tb_cds_vacinacao`, `tb_cds_visita_domiciliar`, `tb_cidadao`, `tb_cidadao_grupo_ativ_col`
