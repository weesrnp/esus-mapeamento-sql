# tb_dim_tipo_atendimento

Tipo: tabela  
Grupo: dimensoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_tipo_atendimento` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_tipo_atendimento` | `character varying(500)` | não |  |
| 4 | `co_dim_tipo_atendimento_pai` | `bigint` | não | FK → tb_dim_tipo_atendimento |
| 5 | `co_ordem` | `integer` | não |  |
| 6 | `ds_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_dim_tipo_atendimento`, `tb_fat_atd_ind_procedimentos`, `tb_fat_atend_odonto_exames`, `tb_fat_atend_odonto_proced`, `tb_fat_atendimento_domiciliar`, `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`
