# tb_dim_dose_frequencia_medida

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_dose_frequencia_med` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `no_dose_frequencia_medida` | `character varying(255)` | não |  |
| 4 | `no_dose_frequencia_medida_filt` | `character varying(255)` | não |  |
| 5 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_atd_ind_medicamentos`, `tb_fat_atend_odonto_medicament`
