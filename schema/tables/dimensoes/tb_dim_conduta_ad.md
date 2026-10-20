# tb_dim_conduta_ad

Tipo: tabela  
Grupo: dimensoes  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_conduta_ad` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_conduta_ad` | `character varying(500)` | não |  |

Referenciada por: `tb_fat_atendimento_domiciliar`
