# tb_dim_faixa_etaria

Tipo: tabela  
Grupo: dimensoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_faixa_etaria` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_faixa_etaria` | `character varying(500)` | não |  |
| 4 | `ds_filtro` | `character varying(255)` | não |  |
| 5 | `nu_faixa_inicial_anos` | `integer` | não |  |
| 6 | `nu_faixa_final_anos` | `integer` | não |  |

Referenciada por: `tb_fat_atd_ind_procedimentos`, `tb_fat_atend_odonto_exames`, `tb_fat_atend_odonto_proced`, `tb_fat_atendimento_domiciliar`, `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`, `tb_fat_avaliacao_elegibilidade`, `tb_fat_cad_individual`, `tb_fat_cuidado_compartilhado`, `tb_fat_marca_consumo_alimnt`, `tb_fat_proced_atend`, `tb_fat_vacinacao`, `tb_fat_visita_domiciliar`
