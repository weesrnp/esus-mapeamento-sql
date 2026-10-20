# tb_dim_cid

Tipo: tabela  
Grupo: dimensoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_cid` | `bigint` | sim | PK |
| 2 | `nu_cid` | `character varying(10)` | não |  |
| 3 | `no_cid` | `character varying(500)` | não |  |
| 4 | `st_ativo` | `integer` | não |  |
| 5 | `st_registro_valido` | `integer` | não |  |
| 6 | `ds_filtro` | `character varying(255)` | não |  |

Referenciada por: `tb_fat_atd_ind_encaminhamentos`, `tb_fat_atd_ind_problemas`, `tb_fat_atend_dom_prob_cond`, `tb_fat_atend_odonto_problemas`, `tb_fat_avaliacao_elegibilidade`, `tb_fat_cuidado_compartilhado`, `tb_fat_vacinacao_vacina`
