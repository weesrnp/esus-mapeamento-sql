# tb_cds_turno

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_cds_turno` | `bigint` | sim | PK |
| 2 | `no_cds_turno` | `character varying(255)` | sim |  |
| 3 | `no_identificador` | `character varying(255)` | sim |  |

Referenciada por: `tb_atividade_coletiva`, `tb_cds_atend_domiciliar`, `tb_cds_atend_individual`, `tb_cds_atend_odonto`, `tb_cds_aval_elegibilidade`, `tb_cds_ficha_ativ_col`, `tb_cds_ficha_zika_microcefalia`, `tb_cds_proced`, `tb_cds_vacinacao`, `tb_cds_visita_domiciliar`
