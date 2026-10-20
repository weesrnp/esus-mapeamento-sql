# tb_dim_ciap

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_ciap` | `bigint` | sim | PK |
| 2 | `nu_ciap` | `character varying(10)` | não |  |
| 3 | `no_ciap` | `character varying(500)` | não |  |
| 4 | `st_registro_valido` | `integer` | não |  |
| 5 | `ds_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_fat_atd_ind_encaminhamentos`, `tb_fat_atd_ind_problemas`, `tb_fat_atend_dom_prob_cond`, `tb_fat_atend_odonto_problemas`, `tb_fat_cuidado_compartilhado`
