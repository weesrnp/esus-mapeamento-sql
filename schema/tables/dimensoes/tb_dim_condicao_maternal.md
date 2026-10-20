# tb_dim_condicao_maternal

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_condicao_maternal` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | sim |  |
| 3 | `ds_condicao` | `character varying(60)` | sim |  |
| 4 | `co_ordem` | `bigint` | sim |  |

Referenciada por: `tb_fat_vacinacao`
