# tb_dim_via_administracao

Tipo: tabela  
Grupo: dimensoes  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_via_administracao` | `bigint` | sim | PK |
| 2 | `nu_identificador` | `character varying(100)` | não |  |
| 3 | `no_via_administracao` | `character varying(255)` | não |  |
| 4 | `no_via_administracao_filtro` | `character varying(255)` | não |  |
| 5 | `co_ordem` | `integer` | não |  |

Referenciada por: `tb_fat_atd_ind_medicamentos`, `tb_fat_atend_odonto_medicament`
