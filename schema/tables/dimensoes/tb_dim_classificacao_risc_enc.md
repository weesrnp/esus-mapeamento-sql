# tb_dim_classificacao_risc_enc

Tipo: tabela  
Grupo: dimensoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_classific_risc_enc` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `co_classificacao_risco` | `bigint` | não |  |
| 4 | `no_classificacao_risco` | `character varying(255)` | não |  |
| 5 | `no_classificacao_risco_filtro` | `character varying(255)` | não |  |
| 6 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_atd_ind_encaminhamentos`, `tb_fat_atend_odonto_encaminham`
