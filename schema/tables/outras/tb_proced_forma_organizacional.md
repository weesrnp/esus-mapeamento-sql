# tb_proced_forma_organizacional

Tipo: tabela  
Grupo: outras  
Colunas: 6

| # | Coluna | Tipo | Obrigatória | Chave |
|--:|---|---|:-:|---|
| 1 | `co_proced_forma_organizacional` | `bigint` | sim | PK |
| 2 | `co_proced_grupo` | `bigint` | sim | FK → tb_proced_grupo |
| 3 | `co_proced_subgrupo` | `bigint` | sim | FK → tb_proced_subgrupo |
| 4 | `no_proced_forma_organizacional` | `character varying(255)` | sim |  |
| 5 | `dt_competencia` | `character varying(6)` | sim |  |
| 6 | `nu_ms` | `character varying(2)` | sim |  |
