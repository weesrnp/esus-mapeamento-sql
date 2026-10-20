# tb_medicamento_catmat

Tipo: tabela  
Grupo: outras  
Colunas: 10

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_medicamento_catmat` | `bigint` | sim | PK |
| 2 | `st_ativo` | `integer` | não |  |
| 3 | `co_principio_ativo` | `bigint` | sim | FK → tb_principio_ativo |
| 4 | `co_unidade_fornecimento` | `bigint` | sim | FK → tb_unidade_medida |
| 5 | `co_catmat` | `character varying(20)` | sim |  |
| 6 | `ds_volume` | `character varying(100)` | não |  |
| 7 | `co_medicamento` | `bigint` | sim | FK → tb_medicamento |
| 8 | `nu_frequencia_instalacao` | `integer` | não |  |
| 9 | `co_rename` | `character varying(28)` | não |  |
| 10 | `no_medicamento_filtro` | `character varying(600)` | não |  |

Referenciada por: `rl_catmat_obm`, `tb_substancia_espec_alergia`
