# tb_dim_conduta_cuidado

Tipo: tabela  
Grupo: dimensoes  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_conduta_cuidado` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | sim |  |
| 3 | `ds_conduta_cuidado` | `character varying(100)` | sim |  |

Referenciada por: `tb_fat_cuidado_compartilhado`
