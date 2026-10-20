# tb_proced_grupo

Tipo: tabela  
Grupo: outras  
Colunas: 4

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_proced_grupo` | `bigint` | sim | PK |
| 2 | `no_proced_grupo` | `character varying(100)` | sim |  |
| 3 | `dt_competencia` | `character varying(6)` | sim |  |
| 4 | `nu_ms` | `character varying(2)` | sim |  |

Referenciada por: `tb_proced_forma_organizacional`, `tb_proced_subgrupo`
