# tb_dim_turno

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_turno` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_turno` | `character varying(500)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_atd_ind_procedimentos`, `tb_fat_atend_dom_prob_cond`, `tb_fat_atend_dom_proced`, `tb_fat_atend_odonto_exames`, `tb_fat_atend_odonto_proced`, `tb_fat_atendimento_domiciliar`, `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`, `tb_fat_atividade_coletiva`, `tb_fat_atvdd_coletiva_ext`, `tb_fat_atvdd_coletiva_int`, `tb_fat_atvdd_coletiva_part`, `tb_fat_atvdd_coletiva_propart`, `tb_fat_avaliacao_elegibilidade`, `tb_fat_complementar`, `tb_fat_cuidado_compartilhado`, `tb_fat_proced_atend`, `tb_fat_proced_atend_proced`, `tb_fat_solicitacao_oci`, `tb_fat_vacinacao`, `tb_fat_visita_domiciliar`
