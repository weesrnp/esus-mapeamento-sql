# tb_dim_cbo

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_cbo` | `bigint` | sim | PK |
| 2 | `nu_cbo` | `character varying(20)` | não |  |
| 3 | `no_cbo` | `character varying(500)` | não |  |
| 4 | `st_registro_valido` | `integer` | não |  |
| 5 | `ds_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_dim_grupo_cbo`, `tb_fat_app_atendimento`, `tb_fat_atd_ind_encaminhamentos`, `tb_fat_atd_ind_exames`, `tb_fat_atd_ind_medicamentos`, `tb_fat_atd_ind_problemas`, `tb_fat_atd_ind_procedimentos`, `tb_fat_atend_dom_prob_cond`, `tb_fat_atend_dom_proced`, `tb_fat_atend_odonto_encaminham`, `tb_fat_atend_odonto_exames`, `tb_fat_atend_odonto_medicament`, `tb_fat_atend_odonto_problemas`, `tb_fat_atend_odonto_proced`, `tb_fat_atendimento_domiciliar`, `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`, `tb_fat_atividade_coletiva`, `tb_fat_atvdd_coletiva_ext`, `tb_fat_atvdd_coletiva_int`, `tb_fat_atvdd_coletiva_part`, `tb_fat_atvdd_coletiva_propart`, `tb_fat_avaliacao_elegibilidade`, `tb_fat_cad_dom_familia`, `tb_fat_cad_domiciliar`, `tb_fat_cad_individual`, `tb_fat_complementar`, `tb_fat_cuidado_compartilhado`, `tb_fat_ivcf`, `tb_fat_marca_consumo_alimnt`, `tb_fat_proced_atend`, `tb_fat_proced_atend_proced`, `tb_fat_procedimento`, `tb_fat_solicitacao_oci`, `tb_fat_vacinacao`, `tb_fat_vacinacao_vacina`, `tb_fat_visita_domiciliar`
