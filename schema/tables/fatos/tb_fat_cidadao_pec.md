# tb_fat_cidadao_pec

Tipo: tabela  
Grupo: fatos  
Colunas: 15

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_fat_cidadao_pec` | `bigint` | sim | PK |
| 2 | `co_cidadao` | `bigint` | não |  |
| 3 | `nu_cns` | `character varying(15)` | não |  |
| 4 | `no_cidadao` | `character varying(500)` | não |  |
| 5 | `no_social_cidadao` | `character varying(500)` | não |  |
| 6 | `co_dim_tempo_nascimento` | `bigint` | não |  |
| 7 | `co_dim_sexo` | `bigint` | não | FK → tb_dim_sexo |
| 8 | `co_dim_identidade_genero` | `bigint` | não | FK → tb_dim_identidade_genero |
| 9 | `nu_telefone_celular` | `character varying(100)` | não |  |
| 10 | `st_faleceu` | `integer` | não |  |
| 11 | `st_lookup_etl` | `integer` | não |  |
| 12 | `st_deletar` | `integer` | não |  |
| 13 | `nu_cpf_cidadao` | `character varying(11)` | não |  |
| 14 | `co_dim_unidade_saude_vinc` | `bigint` | não | FK → tb_dim_unidade_saude |
| 15 | `co_dim_equipe_vinc` | `bigint` | não | FK → tb_dim_equipe |

Referenciada por: `tb_dim_cidadao_pec_grupo`, `tb_fat_app_atendimento`, `tb_fat_atd_ind_encaminhamentos`, `tb_fat_atd_ind_exames`, `tb_fat_atd_ind_medicamentos`, `tb_fat_atd_ind_problemas`, `tb_fat_atd_ind_procedimentos`, `tb_fat_atend_odonto_encaminham`, `tb_fat_atend_odonto_exames`, `tb_fat_atend_odonto_medicament`, `tb_fat_atend_odonto_problemas`, `tb_fat_atend_odonto_proced`, `tb_fat_atendimento_domiciliar`, `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`, `tb_fat_atvdd_coletiva_part`, `tb_fat_avaliacao_elegibilidade`, `tb_fat_cad_dom_familia`, `tb_fat_cad_individual`, `tb_fat_cidadao_territorio`, `tb_fat_cnslddo_ciddo_fai_cid`, `tb_fat_complementar`, `tb_fat_consolidado_cidadao_fai`, `tb_fat_consolidado_cidadao_fao`, `tb_fat_consolidado_cidadao_fci`, `tb_fat_consolidado_cidadao_fp`, `tb_fat_consolidado_cidadao_fvd`, `tb_fat_cuidado_compartilhado`, `tb_fat_familia_territorio`, `tb_fat_ivcf`, `tb_fat_marca_consumo_alimnt`, `tb_fat_op_acompanhamento_idosa`, `tb_fat_proced_atend`, `tb_fat_proced_atend_proced`, `tb_fat_rel_op_crianca`, `tb_fat_rel_op_gestante`, `tb_fat_rel_op_risco_cardio`, `tb_fat_solicitacao_oci`, `tb_fat_vacinacao`, `tb_fat_visita_domiciliar`
