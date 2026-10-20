# tb_dim_catmat

Tipo: tabela  
Grupo: dimensoes  
Colunas: 7

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_seq_dim_catmat` | `bigint` | sim | PK |
| 2 | `co_catmat` | `character varying(20)` | não |  |
| 3 | `no_principio_ativo` | `character varying(400)` | não |  |
| 4 | `ds_concentracao` | `character varying(200)` | não |  |
| 5 | `ds_unidade_fornecimento` | `character varying(200)` | não |  |
| 6 | `co_dim_forma_farmaceutica` | `bigint` | não | FK → tb_dim_forma_farmaceutica |
| 7 | `st_registro_valido` | `integer` | não |  |

Referenciada por: `tb_fat_atd_ind_medicamentos`, `tb_fat_atend_odonto_medicament`
