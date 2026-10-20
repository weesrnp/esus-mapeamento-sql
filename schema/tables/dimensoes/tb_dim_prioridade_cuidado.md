# tb_dim_prioridade_cuidado

Tipo: tabela  
Grupo: dimensoes  
Colunas: 3

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_prioridade_cuidado` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(10)` | sim |  |
| 3 | `ds_prioridade_cuidado` | `character varying(100)` | sim |  |

Referenciada por: `tb_fat_atd_ind_encaminhamentos`, `tb_fat_atend_odonto_encaminham`, `tb_fat_cuidado_compartilhado`
