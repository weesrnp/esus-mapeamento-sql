# tb_dim_just_nao_possui_cpf

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_just_nao_possui_cpf` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(255)` | não |  |
| 3 | `no_justifica_nao_possui_cpf` | `character varying(255)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_atendimento_domiciliar`, `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`, `tb_fat_atvdd_coletiva_part`, `tb_fat_avaliacao_elegibilidade`, `tb_fat_cad_individual`, `tb_fat_complementar`, `tb_fat_marca_consumo_alimnt`, `tb_fat_proced_atend`, `tb_fat_vacinacao`, `tb_fat_visita_domiciliar`
