# tb_cds_prof

Tipo: tabela  
Grupo: fichas_cds  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_cds_prof` | `bigint` | sim | PK |
| 2 | `nu_cns` | `character varying(16)` | não |  |
| 3 | `nu_ine` | `character varying(255)` | não |  |
| 4 | `nu_cbo_2002` | `character varying(10)` | não |  |
| 5 | `nu_cnes` | `character varying(255)` | não |  |
| 6 | `co_unico_cds_prof` | `character varying(40)` | sim |  |

Referenciada por: `rl_cds_ficha_atend_indivdl_prf`, `rl_cds_ficha_atend_odonto_prof`, `rl_cds_ficha_ativ_col_prof`, `tb_cds_aval_elegibilidade`, `tb_cds_cad_domiciliar`, `tb_cds_cad_individual`, `tb_cds_ficha_atend_domiciliar`, `tb_cds_ficha_atend_individual`, `tb_cds_ficha_atend_odonto`, `tb_cds_ficha_ativ_col`, `tb_cds_ficha_consumo_alimentar`, `tb_cds_ficha_proced`, `tb_cds_ficha_vacinacao`, `tb_cds_ficha_visita_domiciliar`, `tb_cds_ficha_zika_microcefalia`, `tb_cidadao_vinculacao_equipe`
