# tb_dim_grupo_atendimento

Tipo: tabela  
Grupo: dimensoes  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_grupo_atendimento` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | não |  |
| 3 | `ds_grupo_atendimento` | `character varying(100)` | não |  |

Referenciada por: `tb_fat_vacinacao_vacina`
