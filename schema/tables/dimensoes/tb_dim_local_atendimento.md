# tb_dim_local_atendimento

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_local_atendimento` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_local_atendimento` | `character varying(500)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |
| 5 | `ds_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_fat_atendimento_domiciliar`, `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`, `tb_fat_marca_consumo_alimnt`, `tb_fat_proced_atend`, `tb_fat_proced_atend_proced`, `tb_fat_vacinacao`
