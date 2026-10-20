# tb_dim_situacao_problema

Tipo: tabela  
Grupo: dimensoes  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_situacao` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(2)` | sim |  |
| 3 | `ds_situacao_problema` | `character varying(50)` | sim |  |

Referenciada por: `tb_fat_atd_ind_problemas`, `tb_fat_atend_dom_prob_cond`, `tb_fat_atend_odonto_problemas`
