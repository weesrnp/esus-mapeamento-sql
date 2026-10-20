# tb_principio_ativo

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_principio_ativo` | `bigint` | sim | PK |
| 2 | `st_ativo` | `integer` | não |  |
| 3 | `no_principio_ativo_filtro` | `character varying(200)` | sim |  |
| 4 | `no_principio_ativo` | `character varying(200)` | sim |  |
| 5 | `co_lista_medicamento` | `bigint` | não | FK → tb_lista_medicamento |

Referenciada por: `tb_medicamento_catmat`
