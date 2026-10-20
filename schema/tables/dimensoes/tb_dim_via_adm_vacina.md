# tb_dim_via_adm_vacina

Tipo: tabela  
Grupo: dimensoes  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_via_adm_vacina` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | sim |  |
| 3 | `ds_via_adm` | `character varying(60)` | sim |  |
| 4 | `co_ordem` | `bigint` | sim |  |

Referenciada por: `tb_fat_vacinacao_vacina`
