# tb_dim_duracao_tratamento_med

Tipo: tabela  
Grupo: dimensoes  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_duracao_trat_med` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `nu_duracao_tratamento_med` | `bigint` | não |  |
| 4 | `no_duracao_tratamento_med` | `character varying(255)` | não |  |
| 5 | `no_duracao_tratamento_med_filt` | `character varying(255)` | não |  |
| 6 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_atd_ind_medicamentos`, `tb_fat_atend_odonto_medicament`
