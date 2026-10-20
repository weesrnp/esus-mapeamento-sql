# tb_proced_subgrupo

Tipo: tabela  
Grupo: outras  
Colunas: 5

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_proced_subgrupo` | `bigint` | sim | PK |
| 2 | `co_proced_grupo` | `bigint` | sim | FK → tb_proced_grupo |
| 3 | `no_proced_subgrupo` | `character varying(100)` | sim |  |
| 4 | `dt_competencia` | `character varying(6)` | sim |  |
| 5 | `nu_ms` | `character varying(2)` | sim |  |

Referenciada por: `tb_proced_forma_organizacional`
