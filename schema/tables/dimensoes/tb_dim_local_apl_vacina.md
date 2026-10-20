# tb_dim_local_apl_vacina

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_local_apl_vacina` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | sim |  |
| 3 | `ds_local_apl_vacina` | `character varying(60)` | sim |  |
| 4 | `co_ordem` | `bigint` | sim |  |

Referenciada por: `tb_fat_vacinacao_vacina`
