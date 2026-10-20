# tb_dim_tipo_glicemia

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_tipo_glicemia` | `bigint` | sim | PK |
| 2 | `ds_tipo_glicemia` | `character varying(100)` | não |  |
| 3 | `ds_tipo_glicemia_filtro` | `character varying(100)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |
| 5 | `nu_identificador` | `character varying(100)` | não |  |

Referenciada por: `tb_fat_atendimento_individual`, `tb_fat_atendimento_odonto`, `tb_fat_proced_atend`, `tb_fat_visita_domiciliar`
