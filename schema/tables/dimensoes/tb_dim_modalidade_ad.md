# tb_dim_modalidade_ad

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_modalidade_ad` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `ds_modalidade_ad` | `character varying(500)` | não |  |
| 4 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_atendimento_domiciliar`, `tb_fat_atendimento_individual`, `tb_fat_avaliacao_elegibilidade`
