# tb_dim_especialidade

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_especialidade` | `bigint` | sim | PK |
| 2 | `ds_especialidade` | `character varying(100)` | não |  |
| 3 | `ds_especialidade_filtro` | `character varying(100)` | não |  |
| 4 | `co_especialidade` | `character varying(100)` | não |  |
| 5 | `st_registro_valido` | `integer` | não |  |

Referenciada por: `tb_fat_atd_ind_encaminhamentos`, `tb_fat_atend_odonto_encaminham`
