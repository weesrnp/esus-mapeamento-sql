# tb_forma_farmaceutica

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_forma_farmaceutica` | `bigint` | sim | PK |
| 2 | `no_forma_farmaceutica` | `character varying(255)` | sim |  |
| 3 | `no_forma_farmaceutica_filtro` | `character varying(255)` | sim |  |
| 4 | `st_ativo` | `integer` | sim |  |

Referenciada por: `tb_medicamento`
