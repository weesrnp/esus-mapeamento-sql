# tb_dim_sexo

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_sexo` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_sexo` | `character varying(100)` | não |  |
| 4 | `sg_sexo` | `character varying(100)` | não |  |
| 5 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_atd_ind_procedimentos`, `tb_fat_atend_odonto_exames`, `tb_fat_atend_odonto_proced`, `tb_fat_atendimento_domiciliar`, `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`, `tb_fat_atvdd_coletiva_part`, `tb_fat_avaliacao_elegibilidade`, `tb_fat_cad_individual`, `tb_fat_cidadao_pec`, `tb_fat_cuidado_compartilhado`, `tb_fat_marca_consumo_alimnt`, `tb_fat_proced_atend`, `tb_fat_proced_atend_proced`, `tb_fat_vacinacao`, `tb_fat_visita_domiciliar`
